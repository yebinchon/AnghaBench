
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mods; } ;


 int KC_LSFT ;
 int MOD_BIT (int ) ;
 int biton32 (int ) ;
 int ergodox_board_led_off () ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_on () ;
 TYPE_1__* keyboard_report ;
 int layer_state ;

void matrix_scan_user(void) {

    uint8_t layer = biton32(layer_state);

    ergodox_board_led_off();
    ergodox_right_led_1_off();
    ergodox_right_led_2_off();
    ergodox_right_led_3_off();
    switch (layer) {

        case 1:
            ergodox_right_led_3_on();
            break;
        case 2:
            ergodox_right_led_2_on();
            break;
        default:

            break;
    }
    if (keyboard_report->mods & MOD_BIT(KC_LSFT)) {
        ergodox_right_led_1_on ();
    }
}
