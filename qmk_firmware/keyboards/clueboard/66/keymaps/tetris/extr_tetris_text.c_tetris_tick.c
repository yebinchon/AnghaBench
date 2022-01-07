
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_piece_to_board (int ,int ,int,int) ;
 int board ;
 scalar_t__ clear_lines (int ) ;
 int copy_piece_from_to (int ,int ) ;
 int down_delay ;
 int draw_piece (int ,int,int,int ,int ) ;
 int draw_piece_moved (int ,int,int,int ,int,int) ;
 int empty_piece ;
 scalar_t__ first_run ;
 int game_over ;
 int get_piece_min_y (int ) ;
 int get_shape_char (int) ;
 scalar_t__ is_piece_hitting (int ,int ,int,int) ;
 int myrandom (int) ;
 scalar_t__ next_down ;
 int piece ;
 int r ;
 int rotation ;
 int score ;
 int send_goto_xy (int,int) ;
 int set_piece (int ,int,int) ;
 int shape ;
 int sprintf (char*,char*,int) ;
 int temp_piece ;
 int tetris_get_keypress () ;
 int tetris_send_down () ;
 int tetris_send_string (char*) ;
 scalar_t__ time ;
 int x ;
 int y ;

int tetris_tick(int ms_since_previous_tick) {
  if (game_over) {
    return 0;
  }

  time += ms_since_previous_tick;

  if (first_run || time > next_down) {
    if (first_run || is_piece_hitting(board, piece, x, y + 1)) {
      first_run = 0;
      add_piece_to_board(piece, board, x, y);

      score += clear_lines(board);

      down_delay = 500 - score * 10;
      if (down_delay < 100) {
        down_delay = 100;
      }

      rotation = 0;
      shape = r % 7;
      r = myrandom(r);
      set_piece(piece, shape, rotation);

      x = 1;
      y = - get_piece_min_y(piece);
      draw_piece_moved(get_shape_char(shape), 1 + x, y, piece, 0, 0);

      if (is_piece_hitting(board, piece, x, y)) {
        game_over = 1;
        send_goto_xy(12, 10);
        tetris_send_string(" game over");
        tetris_send_down();
        tetris_send_string(" score ");
        char tmp[10];
        sprintf(tmp, "%d", score);
        tetris_send_string(tmp);
        return 0;
      }
    } else {
      y++;
      draw_piece_moved(get_shape_char(shape), 1 + x, y, piece, 0, +1);
    }
    next_down = time + down_delay;
  } else {

    switch (tetris_get_keypress()) {
    case 1: {
      int oldrotation = rotation;
      rotation = (rotation + 1) % 4;
      copy_piece_from_to(piece, temp_piece);
      set_piece(piece, shape, rotation);
      if (is_piece_hitting(board, piece, x, y)) {
        rotation = oldrotation;
        set_piece(piece, shape, rotation);
      } else {
        draw_piece(get_shape_char(shape), 1 + x, y, temp_piece, piece);
      }
      break;
    }
    case 2:
      if (!is_piece_hitting(board, piece, x - 1, y)) {
        x--;
        draw_piece_moved(get_shape_char(shape), 1 + x, y, piece, -1, 0);
      }
      break;
    case 3: {
      int starty = y;
      while (!is_piece_hitting(board, piece, x, y + 1)) {
        y++;
      }

      draw_piece(get_shape_char(shape), x + 1, starty, piece, empty_piece);
      draw_piece(get_shape_char(shape), x + 1, y, empty_piece, piece);

      next_down = time + down_delay;
      break;
    }
    case 4:
      if (!is_piece_hitting(board, piece, x + 1, y)) {
        x++;
        draw_piece_moved(get_shape_char(shape), 1 + x, y, piece, 1, 0);
      }
      break;
    }
  }
  return 1;
}
