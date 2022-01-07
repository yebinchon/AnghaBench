
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int biton32 (int ) ;
 int ergodox_board_led_off () ;
 int ergodox_right_led_off (int) ;
 int ergodox_right_led_on (int) ;
 int ergodox_right_led_set (int,int) ;
 int layer_state ;

void matrix_scan_user(void) {






    static uint8_t leds[4];
    uint8_t led;
    uint8_t layer = biton32(layer_state);

    ergodox_board_led_off();


    for (led = 1; led <= 3; ++led) {




        leds[led] += (layer == led) ?
            (leds[led] < 255 ? 1 : 0):
            (leds[led] > 0 ? -1 : 0);

        if (leds[led]) {
            ergodox_right_led_on(led);
            ergodox_right_led_set(led, leds[led]);
        }
        else {
            ergodox_right_led_off(led);
        }
    }


}
