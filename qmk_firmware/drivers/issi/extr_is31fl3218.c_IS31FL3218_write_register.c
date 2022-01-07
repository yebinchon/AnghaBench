
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ISSI_ADDRESS ;
 int ISSI_TIMEOUT ;
 int * g_twi_transfer_buffer ;
 int i2c_transmit (int ,int *,int,int ) ;

void IS31FL3218_write_register(uint8_t reg, uint8_t data) {
    g_twi_transfer_buffer[0] = reg;
    g_twi_transfer_buffer[1] = data;
    i2c_transmit(ISSI_ADDRESS, g_twi_transfer_buffer, 2, ISSI_TIMEOUT);
}
