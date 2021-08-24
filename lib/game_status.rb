# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = 
[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
WIN_COMBINATIONS.each do |x|
  win_index1 = x[0]
  win_index2 = x[1]
  win_index3 = x[2]

  position1 = board[win_index1]
  position2 = board[win_index2]
  position3 = board[win_index3]
  positions = [position1, position2, position3]
  if position1 == position2 && position2 == position3 && position_taken?(board, win_index1)
    return x
    end 
  end
  false
end

def full?(board)
  if board.include?(" ")
    return false
  else true 
  end 
end 

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !full?(board) && !won?(board)
    return false
  else won?(board)
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  end
end 


def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end 
end 