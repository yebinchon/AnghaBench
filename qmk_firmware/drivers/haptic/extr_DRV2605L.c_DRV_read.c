
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int DRV2605L_BASE_ADDRESS ;
 scalar_t__* DRV2605L_read_buffer ;
 scalar_t__ DRV2605L_read_register ;
 scalar_t__* DRV2605L_tx_register ;
 scalar_t__ MSG_OK ;
 int i2c_readReg (int,scalar_t__,scalar_t__*,int,int) ;
 scalar_t__ i2c_transmit_receive (int,scalar_t__*,int,scalar_t__*,int) ;
 int printf (char*) ;

uint8_t DRV_read(uint8_t regaddress) {




    DRV2605L_tx_register[0] = regaddress;
    if (MSG_OK != i2c_transmit_receive(DRV2605L_BASE_ADDRESS << 1, DRV2605L_tx_register, 1, DRV2605L_read_buffer, 1)) {
        printf("err reading reg \n");
    }
    DRV2605L_read_register = (uint8_t)DRV2605L_read_buffer[0];

    return DRV2605L_read_register;
}
