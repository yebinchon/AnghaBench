
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int msg_t ;


 int I2CD1 ;
 int IS31_ADDR_DEFAULT ;
 int IS31_TIMEOUT ;
 int US2ST (int ) ;
 int i2cMasterTransmitTimeout (int *,int ,int *,int,int *,int ,int ) ;
 int is31_select_page (int ) ;
 int * tx ;

msg_t is31_write_register(uint8_t page, uint8_t reg, uint8_t data) {
  is31_select_page(page);
  tx[0] = reg;
  tx[1] = data;
  return i2cMasterTransmitTimeout(&I2CD1, IS31_ADDR_DEFAULT, tx, 2, ((void*)0), 0, US2ST(IS31_TIMEOUT));
}
