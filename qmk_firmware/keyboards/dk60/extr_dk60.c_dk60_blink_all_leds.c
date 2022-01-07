
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _delay_ms (int) ;
 int dk60_led_all_off () ;
 int dk60_led_all_on () ;

void dk60_blink_all_leds(void)
{
    dk60_led_all_off();
    dk60_led_all_on();
    _delay_ms(500);
    dk60_led_all_off();
}
