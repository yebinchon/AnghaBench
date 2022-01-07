
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int** g_led_control_registers ;
 int g_led_control_registers_update_required ;

void IS31FL3736_mono_set_led_control_register(uint8_t index, bool enabled) {



    uint8_t pwm_register = index * 2;

    uint8_t control_register = pwm_register / 8;
    uint8_t bit = pwm_register % 8;

    if (enabled) {
        g_led_control_registers[0][control_register] |= (1 << bit);
    } else {
        g_led_control_registers[0][control_register] &= ~(1 << bit);
    }

    g_led_control_registers_update_required = 1;
}
