
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int I2C_ADDRESS_SA0_1 ;
 int I2C_COMMAND ;
 int i2c_transmit (int,int *,int,int) ;
 int * micro_oled_transfer_buffer ;

void send_command(uint8_t command) {
    micro_oled_transfer_buffer[0] = I2C_COMMAND;
    micro_oled_transfer_buffer[1] = command;
    i2c_transmit(I2C_ADDRESS_SA0_1 << 1, micro_oled_transfer_buffer, 2, 100);
}
