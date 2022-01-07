
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ CAPS_LED ;

 int biton32 (int ) ;
 int default_layer_led_set () ;
 int ergodox_board_led_on () ;
 int ergodox_led_all_off () ;
 int ergodox_right_led_1_on () ;

uint32_t layer_state_set_user(uint32_t state) {
    ergodox_led_all_off();
    switch (biton32(state)) {
      case 128:

          ergodox_board_led_on();
          break;
    };

    if (CAPS_LED) {
      ergodox_right_led_1_on();
    }

    default_layer_led_set();

    return state;
}
