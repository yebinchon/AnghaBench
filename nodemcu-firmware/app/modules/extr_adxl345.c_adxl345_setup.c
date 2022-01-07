
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int PLATFORM_I2C_DIRECTION_TRANSMITTER ;
 int adxl345_i2c_addr ;
 int adxl345_i2c_id ;
 int luaL_error (int *,char*) ;
 int platform_i2c_send_address (int ,int ,int ) ;
 int platform_i2c_send_byte (int ,int) ;
 int platform_i2c_send_start (int ) ;
 int platform_i2c_send_stop (int ) ;
 int r8u (int ,int) ;

__attribute__((used)) static int adxl345_setup(lua_State* L) {
    uint8_t devid;

    devid = r8u(adxl345_i2c_id, 0x00);

    if (devid != 229) {
        return luaL_error(L, "device not found");
    }


    platform_i2c_send_start(adxl345_i2c_id);
    platform_i2c_send_address(adxl345_i2c_id, adxl345_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    platform_i2c_send_byte(adxl345_i2c_id, 0x2D);
    platform_i2c_send_byte(adxl345_i2c_id, 0x08);
    platform_i2c_send_stop(adxl345_i2c_id);

    return 0;
}
