
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curx ;
 int cury ;
 int draw_board_line () ;
 int send_backspaces (int) ;
 int send_goto_xy (int,int) ;
 int tetris_send_backspace () ;

__attribute__((used)) static int clear_lines(char board[20][10]) {
  int cleared_lines = 0;
  for (int y = 19; y >= 0; y--) {
    char isfull = 1;
    for (int x = 0; x < 10; x++) {
      if (!board[y][x]) {
        isfull = 0;
      }
    }
    if (isfull) {

      send_goto_xy(12, y);
      send_backspaces(12);

      tetris_send_backspace();
      cury--;
      curx = 12;
      cleared_lines++;
    } else {
      if (cleared_lines > 0) {

        for (int x = 0; x < 10; x++) {
          board[y + cleared_lines][x] = board[y][x];
        }
      }
    }
  }

  for (int y = 0; y < cleared_lines; y++) {
    for (int x = 0; x < 10; x++) {
      board[y][x] = 0;
    }
  }
  if (cleared_lines > 0) {
    send_goto_xy(0, 0);
    for (int i = 0; i < cleared_lines; i++) {
      draw_board_line();
      curx = 0;
      cury++;
    }
  }
  return cleared_lines;
}
