
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curx ;
 int cury ;
 int draw_board_line () ;
 int tetris_send_string (char*) ;

__attribute__((used)) static void init(void) {
  for (int i = 0; i < 20; i++) {
    draw_board_line();
  }
  tetris_send_string("doooooooooob");
  curx = 12;
  cury = 20;
}
