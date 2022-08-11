class TicTacToe

    WIN_COMBINATIONS = [
    [0, 1, 2], 
    [3, 4, 5], 
    [6, 7, 8],
    [0, 3, 6], 
    [1, 4, 7], 
    [2, 5, 8],
    [0, 4, 8], 
    [2, 4, 6]
    ]

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display_board
    puts @board
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def move(index, token = 'x')
    @board[index] = token
  end

  def position_taken?(index)
    if @board[index] == " "
        return false
    else
        return true
  end

  def valid_move?(position)
    if position < 9 && position >= 0
        position_taken?(position)
    else
        return false
  end

  def turn_count
    @board.count { |x| x! == " "}
  end

  def current_player
    if turn_count.even?
        return "X"
    else
        return "O"
    end
  end

  def turn
    gets input
    index = input_to_index(input)
    if valid_move?(index)
        token = current_player
        move(index, token)
        display_board
    else
        turn
    end
  end

  def won?
    WIN_COMBINATIONS.each { |combo|
    if position_taken?(combo[0]) && [@board[combo[0]], @board[combo[1]], @board[combo[2]]].uniq.length==1
        return true
    else 
        return false
    end
    }
  end

  def full
    if turn_count >= 9
        return true
    else 
        return false
    end
  end

  def draw?
        if full?
            if won?
                return false
            else
                return true
            end
        else
            return false
        end
    end

    
    def over?
        won? || full?
    end

    def winner
        current_player
    end

    def play
        
    end

end


# creating migrations
# create tables
# create relationships between tables
# create methods
# active record/ORM ****
 