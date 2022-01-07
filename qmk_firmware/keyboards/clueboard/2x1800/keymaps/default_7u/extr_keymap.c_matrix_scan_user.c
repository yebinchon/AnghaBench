
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLAY_SONG (int ) ;
 int my_timer ;
 int runonce ;
 int song_one_up ;
 int timer_elapsed (int ) ;

void matrix_scan_user(void) {
  if (runonce && timer_elapsed(my_timer) > 500) {
    runonce = 0;



  }
}
