
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int biton32 (int ) ;
 int ergodox_board_led_1_off () ;
 int ergodox_board_led_1_on () ;
 int ergodox_board_led_2_off () ;
 int ergodox_board_led_2_on () ;
 int ergodox_board_led_3_off () ;
 int ergodox_board_led_3_on () ;
 int ergodox_led_all_off () ;

uint32_t layer_state_set_user(uint32_t state) {

    uint8_t layer = biton32(state);

    ergodox_led_all_off();
    ergodox_board_led_1_off();
    ergodox_board_led_2_off();
    ergodox_board_led_3_off();
    switch (layer) {
      case 1:
        ergodox_board_led_1_on();
        break;
      case 2:
        ergodox_board_led_2_on();
        break;
      case 3:
        ergodox_board_led_2_on();
        break;
      case 4:
        ergodox_board_led_1_on();
        ergodox_board_led_2_on();
        break;
      case 5:
        ergodox_board_led_1_on();
        ergodox_board_led_3_on();
        break;
      case 6:
        ergodox_board_led_2_on();
        ergodox_board_led_3_on();
        break;
      case 7:
        ergodox_board_led_1_on();
        ergodox_board_led_2_on();
        ergodox_board_led_3_on();
        break;
      default:
        break;
    }
    return state;

}
