
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pyb_led_t ;
typedef int pin_obj_t ;
struct TYPE_2__ {int * led_pin; } ;


 int MICROPY_HW_LED_OFF (int const*) ;
 int MICROPY_HW_LED_ON (int const*) ;
 int NUM_LEDS ;
 TYPE_1__* pyb_led_obj ;

void led_state(pyb_led_t led, int state) {
    if (led < 1 || led > NUM_LEDS) {
        return;
    }
    const pin_obj_t *led_pin = pyb_led_obj[led - 1].led_pin;

    if (state == 0) {

        MICROPY_HW_LED_OFF(led_pin);
    } else {

        MICROPY_HW_LED_ON(led_pin);
    }
}
