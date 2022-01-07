
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pyb_led_t ;
struct TYPE_4__ {int pin_mask; TYPE_2__* gpio; } ;
typedef TYPE_1__ pin_obj_t ;
struct TYPE_6__ {TYPE_1__* led_pin; } ;
struct TYPE_5__ {int PDOR; int PCOR; int PSOR; } ;
typedef TYPE_2__ GPIO_TypeDef ;


 int NUM_LEDS ;
 TYPE_3__* pyb_led_obj ;

void led_toggle(pyb_led_t led) {
    if (led < 1 || led > NUM_LEDS) {
        return;
    }
    const pin_obj_t *led_pin = pyb_led_obj[led - 1].led_pin;
    GPIO_TypeDef *gpio = led_pin->gpio;



    if (gpio->PDOR & led_pin->pin_mask) {

        gpio->PCOR = led_pin->pin_mask;
    } else {

        gpio->PSOR = led_pin->pin_mask;
    }
}
