
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ ISSI_PERSISTENCE ;
 int ISSI_TIMEOUT ;
 int* g_twi_transfer_buffer ;
 scalar_t__ i2c_transmit (scalar_t__,int*,int,int ) ;

void IS31FL3733_write_pwm_buffer(uint8_t addr, uint8_t *pwm_buffer) {






    for (int i = 0; i < 192; i += 16) {
        g_twi_transfer_buffer[0] = i;



        for (int j = 0; j < 16; j++) {
            g_twi_transfer_buffer[1 + j] = pwm_buffer[i + j];
        }






        i2c_transmit(addr << 1, g_twi_transfer_buffer, 17, ISSI_TIMEOUT);

    }
}
