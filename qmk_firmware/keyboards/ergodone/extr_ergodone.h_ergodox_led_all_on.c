
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ergodox_board_led_on () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_on () ;

inline void ergodox_led_all_on(void) {
    ergodox_right_led_1_on();
    ergodox_right_led_2_on();
    ergodox_right_led_3_on();
    ergodox_board_led_on();
}
