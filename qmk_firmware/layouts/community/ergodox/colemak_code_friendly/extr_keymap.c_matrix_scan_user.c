
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ LAYER_NUM ;
 scalar_t__ biton32 (int ) ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_on () ;
 int layer_state ;
 scalar_t__ recording_dynamic_macro ;

void matrix_scan_user(void) {
  uint8_t layer = biton32(layer_state);





  if (layer == LAYER_NUM)
      ergodox_right_led_2_on();
  else
      ergodox_right_led_2_off();


  if (recording_dynamic_macro)
      ergodox_right_led_3_on();
  else
      ergodox_right_led_3_off();
}
