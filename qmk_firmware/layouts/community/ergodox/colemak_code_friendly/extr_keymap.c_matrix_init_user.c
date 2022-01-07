
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ergodox_board_led_off () ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_set (int) ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_set (int) ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_set (int) ;

void matrix_init_user(void) {
  ergodox_board_led_off();
  ergodox_right_led_1_off();
  ergodox_right_led_2_off();
  ergodox_right_led_3_off();
  ergodox_right_led_1_set(5);
  ergodox_right_led_2_set(5);
  ergodox_right_led_3_set(5);
}
