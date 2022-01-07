
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int msg_t ;
typedef int i2c_status_t ;


 int I2C_DRIVER ;
 int MS2ST (int ) ;
 int chibios_to_qmk (int ) ;
 int i2cMasterReceiveTimeout (int *,int,int*,int ,int ) ;
 int i2cStart (int *,int *) ;
 int i2c_address ;
 int i2cconfig ;

i2c_status_t i2c_receive(uint8_t address, uint8_t* data, uint16_t length, uint16_t timeout)
{
  i2c_address = address;
  i2cStart(&I2C_DRIVER, &i2cconfig);
  msg_t status = i2cMasterReceiveTimeout(&I2C_DRIVER, (i2c_address >> 1), data, length, MS2ST(timeout));
  return chibios_to_qmk(status);
}
