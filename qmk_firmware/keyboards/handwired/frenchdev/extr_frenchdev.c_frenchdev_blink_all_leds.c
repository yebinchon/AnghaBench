
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_BRIGHTNESS_HI ;
 int frenchdev_led_1_off () ;
 int frenchdev_led_1_on () ;
 int frenchdev_led_2_off () ;
 int frenchdev_led_2_on () ;
 int frenchdev_led_3_off () ;
 int frenchdev_led_3_on () ;
 int frenchdev_led_all_off () ;
 int frenchdev_led_all_set (int ) ;
 int wait_ms (int) ;

void frenchdev_blink_all_leds(void)
{
    frenchdev_led_all_off();
    frenchdev_led_all_set(LED_BRIGHTNESS_HI);
    frenchdev_led_1_on();
    wait_ms(50);
    frenchdev_led_2_on();
    wait_ms(50);
    frenchdev_led_3_on();
    wait_ms(50);
    frenchdev_led_1_off();
    wait_ms(50);
    frenchdev_led_2_off();
    wait_ms(50);
    frenchdev_led_3_off();
    frenchdev_led_all_off();
}
