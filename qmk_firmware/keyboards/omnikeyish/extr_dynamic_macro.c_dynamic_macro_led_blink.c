
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_toggle () ;
 int host_keyboard_leds () ;
 int led_set (int) ;
 int wait_ms (int) ;

void dynamic_macro_led_blink(void) {





  led_set(host_keyboard_leds() ^ 0xFF);
  wait_ms(100);
  led_set(host_keyboard_leds());

}
