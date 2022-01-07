
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _delay_ms (int) ;
 int all_led_off () ;
 int all_led_on () ;
 int caps_lock_led_on () ;
 int keypad_led_on () ;
 int num_lock_led_on () ;
 int scroll_lock_led_on () ;

void blink_all_leds(void)
{
        all_led_on();
        _delay_ms(500);

        all_led_off();
        _delay_ms(100);

        caps_lock_led_on();
        _delay_ms(100);

  num_lock_led_on();
        _delay_ms(100);

        scroll_lock_led_on();
        _delay_ms(100);

         keypad_led_on();
        _delay_ms(100);



        scroll_lock_led_on();
        _delay_ms(100);

        num_lock_led_on();
        _delay_ms(100);

        caps_lock_led_on();
        _delay_ms(100);

        all_led_off();
}
