
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED0 ;
 int MICROPY_HW_LED_OFF (int) ;
 int MICROPY_HW_LED_ON (int) ;

void led_state(int led, int val) {
    if (led == 1) {
        led = LED0;
    }
    if (val) {
        MICROPY_HW_LED_ON(led);
    } else {
        MICROPY_HW_LED_OFF(led);
    }
}
