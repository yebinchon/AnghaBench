
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FCTN ;
 scalar_t__ IS_LAYER_ON (int ) ;
 int NUMP ;
 int SYMB ;
 int SYSH ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_on () ;

void matrix_scan_user (void) {

 if (IS_LAYER_ON(SYMB) || IS_LAYER_ON(SYSH)) {
  ergodox_right_led_1_on();
 } else {
  ergodox_right_led_1_off();
 }

 if (IS_LAYER_ON(NUMP)) {
  ergodox_right_led_2_on();
 } else {
  ergodox_right_led_2_off();
 }

 if (IS_LAYER_ON(FCTN)) {
  ergodox_right_led_3_on();
 } else {
  ergodox_right_led_3_off();
 }

}
