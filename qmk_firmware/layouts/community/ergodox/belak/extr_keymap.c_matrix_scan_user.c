
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LAYER_ON (int ) ;
 int NUMP ;
 int SYMB ;
 int ergodox_board_led_off () ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_off () ;
 int td_led_override ;

void matrix_scan_user(void) {
    ergodox_board_led_off();
    ergodox_right_led_1_off();
    ergodox_right_led_2_off();
    ergodox_right_led_3_off();

    switch (td_led_override) {
    case 1:
        ergodox_right_led_1_on();
        break;
    case 2:
        ergodox_right_led_2_on();
        break;
    default:



        if (LAYER_ON(SYMB)) {
            ergodox_right_led_1_on();
        }
        if (LAYER_ON(NUMP)) {
            ergodox_right_led_2_on();
        }
    }
}
