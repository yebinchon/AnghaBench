
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int enable; } ;


 scalar_t__ DEVICE_STATE_Configured ;
 int SLEEP_MODE_PWR_DOWN ;
 scalar_t__ USB_DeviceState ;
 int USB_LED_CAPS_LOCK ;
 int backlight_set (int ) ;
 scalar_t__ is_backlight_enabled () ;
 int is_suspended ;
 int led_set (int) ;
 TYPE_1__ rgblight_config ;
 int rgblight_disable_noeeprom () ;
 int rgblight_enabled ;
 int rgblight_timer_disable () ;
 int sei () ;
 int set_sleep_mode (int ) ;
 int sleep_cpu () ;
 int sleep_disable () ;
 int sleep_enable () ;
 int suspend_power_down_kb () ;
 int wdt_disable () ;
 int wdt_intr_enable (int) ;
 int wdt_timeout ;

__attribute__((used)) static void power_down(uint8_t wdto) {



    wdt_timeout = wdto;


    wdt_intr_enable(wdto);






    uint8_t leds_off = 0;






    led_set(leds_off);
    suspend_power_down_kb();







    set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    sleep_enable();
    sei();
    sleep_cpu();
    sleep_disable();


    wdt_disable();
}
