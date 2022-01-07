
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ check_dtimer (int) ;
 scalar_t__* diablo_key_time ;
 int * diablo_timer ;
 int send_diablo_keystroke (int) ;
 int timer_read () ;

void run_diablo_macro_check(void) {
  uint8_t dtime;
  for (dtime = 0; dtime < 4; dtime++) {
    if (check_dtimer(dtime) && diablo_key_time[dtime]) {
      diablo_timer[dtime] = timer_read();
      send_diablo_keystroke(dtime);
    }
  }
}
