
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int * g_pwm_buffer ;
 int g_pwm_buffer_update_required ;

void IS31FL3218_set_color(int index, uint8_t red, uint8_t green, uint8_t blue) {
    g_pwm_buffer[index * 3 + 0] = red;
    g_pwm_buffer[index * 3 + 1] = green;
    g_pwm_buffer[index * 3 + 2] = blue;
    g_pwm_buffer_update_required = 1;
}
