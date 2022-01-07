
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int HOTDOX_I2C_TIMEOUT ;
 int I2C_ADDR_WRITE ;
 int i2c_initialized ;
 scalar_t__ i2c_start (int ,int ) ;
 int i2c_stop () ;
 scalar_t__ i2c_write (scalar_t__,int ) ;

uint8_t left_write(uint8_t reg, uint8_t data)
{
  if (!i2c_initialized)
  {
    return 0;
  }

  uint8_t ret;

  ret = i2c_start(I2C_ADDR_WRITE, HOTDOX_I2C_TIMEOUT); if (ret) goto out;
  ret = i2c_write(reg, HOTDOX_I2C_TIMEOUT); if (ret) goto out;
  ret = i2c_write(data, HOTDOX_I2C_TIMEOUT);

out:
  i2c_stop();
  return ret;
}
