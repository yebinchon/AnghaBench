
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ANSWER_TIMEOUT ;
 scalar_t__ lastTime ;
 int reset_rgb () ;
 scalar_t__ timer_elapsed32 (scalar_t__) ;

void matrix_scan_user(void) {
  if (lastTime > 0 && timer_elapsed32(lastTime) > ANSWER_TIMEOUT) {
    lastTime = 0;
    reset_rgb();
  }
}
