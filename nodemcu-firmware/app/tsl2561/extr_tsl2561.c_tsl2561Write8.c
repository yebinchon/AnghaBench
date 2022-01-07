
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tsl2561Error_t ;


 int PLATFORM_I2C_DIRECTION_TRANSMITTER ;
 int TSL2561_ERROR_OK ;
 int platform_i2c_send_address (int ,int ,int ) ;
 int platform_i2c_send_byte (int ,int ) ;
 int platform_i2c_send_start (int ) ;
 int platform_i2c_send_stop (int ) ;
 int tsl2561Address ;
 int tsl2561_i2c_id ;

tsl2561Error_t tsl2561Write8(uint8_t reg, uint8_t value) {
 platform_i2c_send_start(tsl2561_i2c_id);
 platform_i2c_send_address(tsl2561_i2c_id, tsl2561Address, PLATFORM_I2C_DIRECTION_TRANSMITTER);
 platform_i2c_send_byte(tsl2561_i2c_id, reg);
 platform_i2c_send_byte(tsl2561_i2c_id, value);
 platform_i2c_send_stop(tsl2561_i2c_id);
 return TSL2561_ERROR_OK;
}
