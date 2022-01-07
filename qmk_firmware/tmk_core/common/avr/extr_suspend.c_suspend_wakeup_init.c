
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_init () ;
 int clear_keyboard () ;
 int host_keyboard_leds () ;
 int is_suspended ;
 int led_set (int ) ;
 int rgblight_enable_noeeprom () ;
 scalar_t__ rgblight_enabled ;
 int rgblight_timer_enable () ;
 int suspend_wakeup_init_kb () ;
 int wait_ms (int) ;

void suspend_wakeup_init(void) {

    clear_keyboard();



    led_set(host_keyboard_leds());
    suspend_wakeup_init_kb();
}
