
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int IS31FL3731_write_pwm_buffer (size_t,int ) ;
 int * g_pwm_buffer ;
 int* g_pwm_buffer_update_required ;

void IS31FL3731_update_pwm_buffers(uint8_t addr, uint8_t index) {
    if (g_pwm_buffer_update_required[index]) {
        IS31FL3731_write_pwm_buffer(addr, g_pwm_buffer[index]);
    }
    g_pwm_buffer_update_required[index] = 0;
}
