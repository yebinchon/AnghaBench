
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;


 int ergodox_board_led_off () ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_on () ;
 unsigned long layer_state ;

void matrix_scan_user(void) {
    __attribute__ ((unused))
    uint32_t layer0 = layer_state & (1UL << 0),
             layer1 = layer_state & (1UL << 1),
             layer2 = layer_state & (1UL << 2),
             layer3 = layer_state & (1UL << 3);

    ergodox_board_led_off();
    ergodox_right_led_1_off();
    ergodox_right_led_2_off();
    ergodox_right_led_3_off();

    if (layer1) ergodox_right_led_1_on();
    if (layer2) ergodox_right_led_2_on();
    if (layer3) ergodox_right_led_3_on();
}
