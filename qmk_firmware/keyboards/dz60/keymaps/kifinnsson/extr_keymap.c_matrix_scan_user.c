
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LGUI ;
 int is_lgui_active ;
 int lgui_timer ;
 int timer_elapsed (int ) ;
 int unregister_code (int ) ;

void matrix_scan_user(void) {
  if (is_lgui_active) {
    if (timer_elapsed(lgui_timer) > 1000) {
      unregister_code(KC_LGUI);
      is_lgui_active = 0;
    }
  }
}
