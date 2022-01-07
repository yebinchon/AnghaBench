
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tetris_send_newline () ;
 int tetris_send_string (char*) ;

__attribute__((used)) static void draw_board_line(void) {

  tetris_send_string("l..........l");
  tetris_send_newline();
}
