
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ tetris_running ;
 int tetris_tick (int) ;
 int tetris_timer ;

void matrix_scan_user(void) {
  if (tetris_running) {
    tetris_timer++;
    if (tetris_timer > 1000) {

      if (!tetris_tick(100)) {

        tetris_running = 0;
      }
      tetris_timer = 0;
    }
  }
}
