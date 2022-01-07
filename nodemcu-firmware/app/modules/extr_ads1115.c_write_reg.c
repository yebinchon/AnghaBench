
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int PLATFORM_I2C_DIRECTION_TRANSMITTER ;
 int ads1115_i2c_id ;
 int platform_i2c_send_address (int ,int ,int ) ;
 int platform_i2c_send_byte (int ,int ) ;
 int platform_i2c_send_start (int ) ;
 int platform_i2c_send_stop (int ) ;

__attribute__((used)) static uint8_t write_reg(uint8_t ads_addr, uint8_t reg, uint16_t config) {
    platform_i2c_send_start(ads1115_i2c_id);
    platform_i2c_send_address(ads1115_i2c_id, ads_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    platform_i2c_send_byte(ads1115_i2c_id, reg);
    platform_i2c_send_byte(ads1115_i2c_id, (uint8_t)(config >> 8));
    platform_i2c_send_byte(ads1115_i2c_id, (uint8_t)(config & 0xFF));
    platform_i2c_send_stop(ads1115_i2c_id);
}
