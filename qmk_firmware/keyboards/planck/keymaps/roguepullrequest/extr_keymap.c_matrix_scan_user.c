
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LALT ;
 int alt_tab_timer ;
 int is_alt_tab_active ;
 int timer_elapsed (int ) ;
 int unregister_code16 (int ) ;

void matrix_scan_user(void) {
  if (is_alt_tab_active) {
    if (timer_elapsed(alt_tab_timer) > 1000) {
      unregister_code16(KC_LALT);
      is_alt_tab_active = 0;
    }
  }
}
