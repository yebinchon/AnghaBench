
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HSV_BLUE ;
 int HSV_GREEN ;
 int HSV_RED ;
 int HSV_YELLOW ;
 scalar_t__ SINGLE_HOLD ;
 scalar_t__ S_COLEMAK ;
 scalar_t__ S_CRUSSIAN ;
 scalar_t__ S_ENGLISH ;
 scalar_t__ S_QRUSSIAN ;
 scalar_t__ l_state ;
 scalar_t__ rgb ;
 int set_colors (int,...) ;
 scalar_t__ td_state ;

void update_led_state_c(void) {
  if (rgb>0) return;
  if (td_state == SINGLE_HOLD) set_colors(HSV_BLUE);
  else {
    if (l_state == S_ENGLISH) set_colors(HSV_RED);
    if (l_state == S_QRUSSIAN) set_colors(HSV_GREEN);
    if (l_state == S_COLEMAK) set_colors(HSV_YELLOW);
    if (l_state == S_CRUSSIAN) set_colors(85, 100, 100);
  }
}
