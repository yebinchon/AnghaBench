
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t driver; int v; } ;
typedef TYPE_1__ is31_led ;


 int LED_DRIVER_LED_COUNT ;
 TYPE_1__* g_is31_leds ;
 int ** g_pwm_buffer ;
 int g_pwm_buffer_update_required ;

void IS31FL3731_set_value(int index, uint8_t value) {
    if (index >= 0 && index < LED_DRIVER_LED_COUNT) {
        is31_led led = g_is31_leds[index];


        g_pwm_buffer[led.driver][led.v - 0x24] = value;
        g_pwm_buffer_update_required = 1;
    }
}
