
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_BRIGHTNESS_DEFAULT ;
 int _delay_ms (int) ;
 int ergodox_led_all_off () ;
 int ergodox_led_all_set (int ) ;
 int ergodox_left_led_1_off () ;
 int ergodox_left_led_1_on () ;
 int ergodox_left_led_2_off () ;
 int ergodox_left_led_2_on () ;
 int ergodox_left_led_3_off () ;
 int ergodox_left_led_3_on () ;
 scalar_t__ ergodox_left_leds_update () ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_on () ;
 scalar_t__ mcp23018_status ;

void ergodox_blink_all_leds(void)
{
    ergodox_led_all_off();
    ergodox_led_all_set(LED_BRIGHTNESS_DEFAULT);
    ergodox_right_led_1_on();
    _delay_ms(50);
    ergodox_right_led_2_on();
    _delay_ms(50);
    ergodox_right_led_3_on();
    _delay_ms(50);
    ergodox_right_led_1_off();
    _delay_ms(50);
    ergodox_right_led_2_off();
    _delay_ms(50);
    ergodox_right_led_3_off();
    ergodox_led_all_off();
}
