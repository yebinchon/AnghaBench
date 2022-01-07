
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t driver; size_t r; size_t g; size_t b; } ;
typedef TYPE_1__ is31_led ;


 int DRIVER_LED_TOTAL ;
 TYPE_1__* g_is31_leds ;
 int ** g_pwm_buffer ;
 int g_pwm_buffer_update_required ;

void IS31FL3736_set_color(int index, uint8_t red, uint8_t green, uint8_t blue) {
    if (index >= 0 && index < DRIVER_LED_TOTAL) {
        is31_led led = g_is31_leds[index];

        g_pwm_buffer[led.driver][led.r] = red;
        g_pwm_buffer[led.driver][led.g] = green;
        g_pwm_buffer[led.driver][led.b] = blue;
        g_pwm_buffer_update_required = 1;
    }
}
