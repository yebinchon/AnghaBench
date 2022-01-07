
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int r; int g; int b; size_t driver; } ;
typedef TYPE_1__ is31_led ;


 TYPE_1__* g_is31_leds ;
 int** g_led_control_registers ;
 int* g_led_control_registers_update_required ;

void IS31FL3731_set_led_control_register(uint8_t index, bool red, bool green, bool blue) {
    is31_led led = g_is31_leds[index];

    uint8_t control_register_r = (led.r - 0x24) / 8;
    uint8_t control_register_g = (led.g - 0x24) / 8;
    uint8_t control_register_b = (led.b - 0x24) / 8;
    uint8_t bit_r = (led.r - 0x24) % 8;
    uint8_t bit_g = (led.g - 0x24) % 8;
    uint8_t bit_b = (led.b - 0x24) % 8;

    if (red) {
        g_led_control_registers[led.driver][control_register_r] |= (1 << bit_r);
    } else {
        g_led_control_registers[led.driver][control_register_r] &= ~(1 << bit_r);
    }
    if (green) {
        g_led_control_registers[led.driver][control_register_g] |= (1 << bit_g);
    } else {
        g_led_control_registers[led.driver][control_register_g] &= ~(1 << bit_g);
    }
    if (blue) {
        g_led_control_registers[led.driver][control_register_b] |= (1 << bit_b);
    } else {
        g_led_control_registers[led.driver][control_register_b] &= ~(1 << bit_b);
    }

    g_led_control_registers_update_required[led.driver] = 1;
}
