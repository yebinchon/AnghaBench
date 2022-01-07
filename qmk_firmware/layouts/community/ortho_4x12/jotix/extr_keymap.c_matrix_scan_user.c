
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_bspc_pressed ;
 scalar_t__ is_ctl_pressed ;
 scalar_t__ is_esc_pressed ;
 int reset_keyboard () ;

void matrix_scan_user(void) {
  if (is_ctl_pressed && is_esc_pressed && is_bspc_pressed) {
    reset_keyboard();
  }
}
