
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PLATFORM_I2C_DIRECTION_TRANSMITTER ;
 int TCS34725_ADDRESS ;
 int TCS34725_BUS_ID ;
 int TCS34725_COMMAND_BIT ;
 int platform_i2c_send_address (int ,int ,int ) ;
 int platform_i2c_send_byte (int ,int) ;
 int platform_i2c_send_start (int ) ;
 int platform_i2c_send_stop (int ) ;

uint8_t tcs34725Write8 (uint8_t reg, uint8_t value)
{
 platform_i2c_send_start(TCS34725_BUS_ID);
 platform_i2c_send_address(TCS34725_BUS_ID, TCS34725_ADDRESS, PLATFORM_I2C_DIRECTION_TRANSMITTER);
 platform_i2c_send_byte(TCS34725_BUS_ID, TCS34725_COMMAND_BIT | reg );
 platform_i2c_send_byte(TCS34725_BUS_ID, value);
 platform_i2c_send_stop(TCS34725_BUS_ID);
 return 0;
}
