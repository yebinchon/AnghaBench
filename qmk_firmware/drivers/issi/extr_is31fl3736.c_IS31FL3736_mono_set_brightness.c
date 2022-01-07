
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t** g_pwm_buffer ;
 int g_pwm_buffer_update_required ;

void IS31FL3736_mono_set_brightness(int index, uint8_t value) {
    if (index >= 0 && index < 96) {


        uint8_t pwm_register = index * 2;
        g_pwm_buffer[0][pwm_register] = value;
        g_pwm_buffer_update_required = 1;
    }
}
