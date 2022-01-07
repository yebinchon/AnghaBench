
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int host_keyboard_leds () ;
 int led_set (int ) ;
 int print (char*) ;
 int sleep_led_disable () ;
 int suspend_wakeup_init () ;

void EVENT_USB_Device_WakeUp() {
    print("[W]");
    suspend_wakeup_init();






}
