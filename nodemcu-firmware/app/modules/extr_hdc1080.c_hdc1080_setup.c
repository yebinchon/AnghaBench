
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int HDC1080_CONFIG_REGISTER ;
 int PLATFORM_I2C_DIRECTION_TRANSMITTER ;
 int hdc1080_i2c_addr ;
 int hdc1080_i2c_id ;
 int platform_i2c_send_address (int ,int ,int ) ;
 int platform_i2c_send_byte (int ,int) ;
 int platform_i2c_send_start (int ) ;
 int platform_i2c_send_stop (int ) ;

__attribute__((used)) static int hdc1080_setup(lua_State* L) {


    platform_i2c_send_start(hdc1080_i2c_id);
    platform_i2c_send_address(hdc1080_i2c_id, hdc1080_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    platform_i2c_send_byte(hdc1080_i2c_id, HDC1080_CONFIG_REGISTER);
    platform_i2c_send_byte(hdc1080_i2c_id, 0x05);
    platform_i2c_send_byte(hdc1080_i2c_id, 0x00);
    platform_i2c_send_stop(hdc1080_i2c_id);

    return 0;
}
