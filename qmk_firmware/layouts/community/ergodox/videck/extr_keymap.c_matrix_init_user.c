
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_BRIGHTNESS_LO ;
 int caps_lock_is_on ;
 int ergodox_led_all_set (int ) ;

void matrix_init_user(void) {
  ergodox_led_all_set(LED_BRIGHTNESS_LO);
  caps_lock_is_on = 0;
}
