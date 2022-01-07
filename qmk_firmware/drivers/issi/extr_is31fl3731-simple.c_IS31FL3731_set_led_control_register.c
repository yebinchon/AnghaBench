
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int v; size_t driver; } ;
typedef TYPE_1__ is31_led ;


 TYPE_1__* g_is31_leds ;
 int** g_led_control_registers ;
 int g_led_control_registers_update_required ;

void IS31FL3731_set_led_control_register(uint8_t index, bool value) {
    is31_led led = g_is31_leds[index];

    uint8_t control_register = (led.v - 0x24) / 8;
    uint8_t bit_value = (led.v - 0x24) % 8;

    if (value) {
        g_led_control_registers[led.driver][control_register] |= (1 << bit_value);
    } else {
        g_led_control_registers[led.driver][control_register] &= ~(1 << bit_value);
    }

    g_led_control_registers_update_required = 1;
}
