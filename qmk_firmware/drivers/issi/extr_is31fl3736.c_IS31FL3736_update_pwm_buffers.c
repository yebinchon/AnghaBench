
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS31FL3736_write_pwm_buffer (int ,int ) ;
 int IS31FL3736_write_register (int ,int ,int) ;
 int ISSI_COMMANDREGISTER ;
 int ISSI_COMMANDREGISTER_WRITELOCK ;
 int ISSI_PAGE_PWM ;
 int * g_pwm_buffer ;
 int g_pwm_buffer_update_required ;

void IS31FL3736_update_pwm_buffers(uint8_t addr1, uint8_t addr2) {
    if (g_pwm_buffer_update_required) {

        IS31FL3736_write_register(addr1, ISSI_COMMANDREGISTER_WRITELOCK, 0xC5);
        IS31FL3736_write_register(addr1, ISSI_COMMANDREGISTER, ISSI_PAGE_PWM);

        IS31FL3736_write_pwm_buffer(addr1, g_pwm_buffer[0]);

    }
    g_pwm_buffer_update_required = 0;
}
