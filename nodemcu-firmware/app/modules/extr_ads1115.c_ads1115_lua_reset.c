
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int PLATFORM_I2C_DIRECTION_TRANSMITTER ;
 int ads1115_i2c_id ;
 int ads1115_i2c_reset ;
 int general_i2c_addr ;
 int platform_i2c_send_address (int ,int ,int ) ;
 int platform_i2c_send_byte (int ,int ) ;
 int platform_i2c_send_start (int ) ;
 int platform_i2c_send_stop (int ) ;

__attribute__((used)) static int ads1115_lua_reset(lua_State *L) {
    platform_i2c_send_start(ads1115_i2c_id);
    platform_i2c_send_address(ads1115_i2c_id, general_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    platform_i2c_send_byte(ads1115_i2c_id, ads1115_i2c_reset);
    platform_i2c_send_stop(ads1115_i2c_id);
    return 0;
}
