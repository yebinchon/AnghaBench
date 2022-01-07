
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RGBLIGHT_MODE_STATIC_LIGHT ;
 scalar_t__ cursor_pos ;
 int last_timer ;
 int reset_chars () ;
 int reset_timer ;
 int rgblight_mode (int ) ;
 int timer_read () ;

void keyboard_post_init_user(void) {

  rgblight_mode(RGBLIGHT_MODE_STATIC_LIGHT);
  cursor_pos = 0;
  reset_chars();
  reset_timer = last_timer = timer_read();
}
