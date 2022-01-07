
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ISSI_ADDRESS ;
 int ISSI_REG_PWM ;
 int ISSI_TIMEOUT ;
 int * g_twi_transfer_buffer ;
 int i2c_transmit (int ,int *,int,int ) ;

void IS31FL3218_write_pwm_buffer(uint8_t *pwm_buffer) {
    g_twi_transfer_buffer[0] = ISSI_REG_PWM;
    for (int i = 0; i < 18; i++) {
        g_twi_transfer_buffer[1 + i] = pwm_buffer[i];
    }

    i2c_transmit(ISSI_ADDRESS, g_twi_transfer_buffer, 19, ISSI_TIMEOUT);
}
