
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ long_tap_timer ;

void matrix_scan_user(void) {

  if (long_tap_timer > 0) {
    long_tap_timer++;
  }
}
