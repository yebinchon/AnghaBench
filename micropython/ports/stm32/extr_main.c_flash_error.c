
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PYB_LED_GREEN ;
 int PYB_LED_RED ;
 int led_state (int ,int) ;
 int mp_hal_delay_ms (int) ;

void flash_error(int n) {
    for (int i = 0; i < n; i++) {
        led_state(PYB_LED_RED, 1);
        led_state(PYB_LED_GREEN, 0);
        mp_hal_delay_ms(250);
        led_state(PYB_LED_RED, 0);
        led_state(PYB_LED_GREEN, 1);
        mp_hal_delay_ms(250);
    }
    led_state(PYB_LED_GREEN, 0);
}
