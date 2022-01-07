
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int msg_t ;
typedef int i2c_status_t ;


 int I2C_DRIVER ;
 int MS2ST (int) ;
 int chibios_to_qmk (int ) ;
 int i2cMasterTransmitTimeout (int *,int,int*,int,int ,int ,int ) ;
 int i2cStart (int *,int *) ;
 int i2c_address ;
 int i2cconfig ;

i2c_status_t i2c_writeReg(uint8_t devaddr, uint8_t regaddr, const uint8_t* data, uint16_t length, uint16_t timeout)
{
  i2c_address = devaddr;
  i2cStart(&I2C_DRIVER, &i2cconfig);

  uint8_t complete_packet[length + 1];
  for(uint8_t i = 0; i < length; i++)
  {
    complete_packet[i+1] = data[i];
  }
  complete_packet[0] = regaddr;

  msg_t status = i2cMasterTransmitTimeout(&I2C_DRIVER, (i2c_address >> 1), complete_packet, length + 1, 0, 0, MS2ST(timeout));
  return chibios_to_qmk(status);
}
