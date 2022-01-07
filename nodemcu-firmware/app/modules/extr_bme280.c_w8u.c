
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PLATFORM_I2C_DIRECTION_TRANSMITTER ;
 int bme280_i2c_addr ;
 int bme280_i2c_id ;
 int platform_i2c_send_address (int ,int ,int ) ;
 int platform_i2c_send_byte (int ,int ) ;
 int platform_i2c_send_start (int ) ;
 int platform_i2c_send_stop (int ) ;

__attribute__((used)) static uint8_t w8u(uint8_t reg, uint8_t val) {
 platform_i2c_send_start(bme280_i2c_id);
 platform_i2c_send_address(bme280_i2c_id, bme280_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
 platform_i2c_send_byte(bme280_i2c_id, reg);
 platform_i2c_send_byte(bme280_i2c_id, val);
 platform_i2c_send_stop(bme280_i2c_id);
}
