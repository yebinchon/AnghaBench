
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I2C_DRIVER ;
 int i2cStop (int *) ;

void i2c_stop(void)
{
  i2cStop(&I2C_DRIVER);
}
