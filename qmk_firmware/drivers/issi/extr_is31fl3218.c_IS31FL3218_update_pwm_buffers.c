
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS31FL3218_write_pwm_buffer (int ) ;
 int IS31FL3218_write_register (int ,int) ;
 int ISSI_REG_UPDATE ;
 int g_pwm_buffer ;
 int g_pwm_buffer_update_required ;

void IS31FL3218_update_pwm_buffers(void) {
    if (g_pwm_buffer_update_required) {
        IS31FL3218_write_pwm_buffer(g_pwm_buffer);

        IS31FL3218_write_register(ISSI_REG_UPDATE, 0x01);
    }
    g_pwm_buffer_update_required = 0;
}
