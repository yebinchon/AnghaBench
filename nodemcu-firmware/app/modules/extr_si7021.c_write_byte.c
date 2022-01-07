
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PLATFORM_I2C_DIRECTION_TRANSMITTER ;
 int platform_i2c_send_address (int ,int ,int ) ;
 int platform_i2c_send_byte (int ,int ) ;
 int platform_i2c_send_start (int ) ;
 int platform_i2c_send_stop (int ) ;
 int si7021_i2c_addr ;
 int si7021_i2c_id ;

__attribute__((used)) static uint8_t write_byte(uint8_t reg) {
 platform_i2c_send_start(si7021_i2c_id);
 platform_i2c_send_address(si7021_i2c_id, si7021_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
 platform_i2c_send_byte(si7021_i2c_id, reg);
 platform_i2c_send_stop(si7021_i2c_id);
}
