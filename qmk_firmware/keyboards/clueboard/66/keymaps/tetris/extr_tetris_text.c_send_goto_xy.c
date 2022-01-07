
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curx ;
 int cury ;
 int tetris_send_down () ;
 int tetris_send_left () ;
 int tetris_send_right () ;
 int tetris_send_up () ;

__attribute__((used)) static void send_goto_xy(int x, int y) {
  while (curx < x) {
    tetris_send_right();
    curx++;
  }
  while (curx > x) {
    tetris_send_left();
    curx--;
  }
  while (cury < y) {
    tetris_send_down();
    cury++;
  }
  while (cury > y) {
    tetris_send_up();
    cury--;
  }
}
