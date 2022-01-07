
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ergodox_board_led_off () ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_3_off () ;

inline void ergodox_led_all_off(void) {
    ergodox_right_led_1_off();
    ergodox_right_led_2_off();
    ergodox_right_led_3_off();
    ergodox_board_led_off();
}
