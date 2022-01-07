
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int animate_cursor (int) ;
 scalar_t__ interval_time ;
 int last_timer ;
 int reset_chars () ;
 scalar_t__ reset_time ;
 int reset_timer ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_pos ;
 int timer_read () ;

void matrix_scan_user(void) {
  if (timer_elapsed(reset_timer) > reset_time) {
      reset_chars();
      reset_timer = timer_read();
      return;
  }
  if (timer_elapsed(last_timer) < interval_time) {
    return;
  }
  last_timer += interval_time;
  timer_pos += 4;
  if (timer_pos >= 255) {
    timer_pos = 0;
    last_timer = timer_read();
  }
  animate_cursor(timer_pos);
}
