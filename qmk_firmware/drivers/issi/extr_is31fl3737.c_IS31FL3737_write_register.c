
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ ISSI_PERSISTENCE ;
 int ISSI_TIMEOUT ;
 scalar_t__* g_twi_transfer_buffer ;
 scalar_t__ i2c_transmit (scalar_t__,scalar_t__*,int,int ) ;

void IS31FL3737_write_register(uint8_t addr, uint8_t reg, uint8_t data) {
    g_twi_transfer_buffer[0] = reg;
    g_twi_transfer_buffer[1] = data;






    i2c_transmit(addr << 1, g_twi_transfer_buffer, 2, ISSI_TIMEOUT);

}
