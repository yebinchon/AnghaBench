
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int i2c_id ;
 int luaL_error (int *,char*) ;
 int r8u (int ,int) ;
 int w8u (int ,int,int) ;

__attribute__((used)) static int l3g4200d_setup(lua_State* L) {
    uint8_t devid;

    devid = r8u(i2c_id, 0xF);

    if (devid != 0xD3) {
        return luaL_error(L, "device not found");
    }

    w8u(i2c_id, 0x20, 0xF);

    return 0;
}
