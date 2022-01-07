
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DRV2605L_BASE_ADDRESS ;
 int * DRV2605L_transfer_buffer ;
 int i2c_transmit (int,int *,int,int) ;

void DRV_write(uint8_t drv_register, uint8_t settings) {
    DRV2605L_transfer_buffer[0] = drv_register;
    DRV2605L_transfer_buffer[1] = settings;
    i2c_transmit(DRV2605L_BASE_ADDRESS << 1, DRV2605L_transfer_buffer, 2, 100);
}
