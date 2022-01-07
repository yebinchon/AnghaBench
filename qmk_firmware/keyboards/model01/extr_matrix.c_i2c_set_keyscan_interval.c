
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int i2c_status_t ;
typedef int buf ;


 int I2C_ADDR (int) ;
 int I2C_TIMEOUT ;
 int TWI_CMD_KEYSCAN_INTERVAL ;
 int i2c_transmit (int ,int*,int,int ) ;

__attribute__((used)) static int i2c_set_keyscan_interval(int hand, int delay) {
  uint8_t buf[] = {TWI_CMD_KEYSCAN_INTERVAL, delay};
  i2c_status_t ret = i2c_transmit(I2C_ADDR(hand), buf, sizeof(buf), I2C_TIMEOUT);
  return ret;
}
