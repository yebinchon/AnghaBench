
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ergodox_board_led_1_off () ;
 int ergodox_board_led_1_on () ;
 int ergodox_board_led_2_off () ;
 int ergodox_board_led_2_on () ;
 int ergodox_board_led_3_off () ;
 int ergodox_board_led_3_on () ;
 int ergodox_led_all_off () ;
 int wait_ms (int) ;

void ergodox_blink_all_leds(void)
{
    ergodox_led_all_off();

    ergodox_board_led_1_on();
    wait_ms(50);
    ergodox_board_led_2_on();
    wait_ms(50);
    ergodox_board_led_3_on();
    wait_ms(50);
    ergodox_board_led_1_off();
    wait_ms(50);
    ergodox_board_led_2_off();
    wait_ms(50);
    ergodox_board_led_3_off();
}
