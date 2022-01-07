
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int gpio; int pin_mask; } ;
typedef TYPE_1__ pin_obj_t ;
struct TYPE_8__ {TYPE_1__* led_pin; } ;
struct TYPE_7__ {int Pin; int Pull; int Mode; int Speed; } ;
typedef TYPE_2__ GPIO_InitTypeDef ;


 int GPIO_NOPULL ;
 int GPIO_SPEED_FREQ_LOW ;
 int HAL_GPIO_Init (int ,TYPE_2__*) ;
 int MICROPY_HW_LED_OFF (TYPE_1__ const*) ;
 int MICROPY_HW_LED_OTYPE ;
 int NUM_LEDS ;
 TYPE_3__* pyb_led_obj ;

void led_init(void) {

    GPIO_InitTypeDef GPIO_InitStructure;


    GPIO_InitStructure.Speed = GPIO_SPEED_FREQ_LOW;
    GPIO_InitStructure.Mode = MICROPY_HW_LED_OTYPE;
    GPIO_InitStructure.Pull = GPIO_NOPULL;


    for (int led = 0; led < NUM_LEDS; led++) {
        const pin_obj_t *led_pin = pyb_led_obj[led].led_pin;
        MICROPY_HW_LED_OFF(led_pin);
        GPIO_InitStructure.Pin = led_pin->pin_mask;
        HAL_GPIO_Init(led_pin->gpio, &GPIO_InitStructure);
    }
}
