
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ battery_led_t ;


 int DDRF ;
 scalar_t__ LED_OFF ;
 scalar_t__ LED_ON ;
 scalar_t__ LED_TOGGLE ;
 int PINF ;
 int PORTF ;

void battery_led(battery_led_t val)
{
    if (val == LED_TOGGLE) {

        DDRF |= (1<<5);
        PINF |= (1<<5);
    } else if (val == LED_ON) {

        DDRF |= (1<<5);
        PORTF &= ~(1<<5);
    } else if (val == LED_OFF) {

        DDRF |= (1<<5);
        PORTF |= (1<<5);
    } else {

        DDRF &= ~(1<<5);
        PORTF &= ~(1<<5);
    }
}
