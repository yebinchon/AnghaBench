
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int hmc5883_i2c_id ;
 int luaL_error (int *,char*) ;
 int r8u (int ,int) ;
 int w8u (int ,int,int) ;

__attribute__((used)) static int hmc5883_setup(lua_State* L) {
    uint8_t devid_a, devid_b, devid_c;

    devid_a = r8u(hmc5883_i2c_id, 10);
    devid_b = r8u(hmc5883_i2c_id, 11);
    devid_c = r8u(hmc5883_i2c_id, 12);

    if ((devid_a != 0x48) || (devid_b != 0x34) || (devid_c != 0x33)) {
        return luaL_error(L, "device not found");
    }


    w8u(hmc5883_i2c_id, 0x00, 0x70);


    w8u(hmc5883_i2c_id, 0x01, 0xA0);


    w8u(hmc5883_i2c_id, 0x02, 0x00);

    return 0;
}
