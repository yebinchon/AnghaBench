
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;
typedef int int32_t ;


 int bmp085_pressure_raw (int) ;
 int luaL_checkinteger (int *,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int bmp085_lua_pressure_raw(lua_State* L) {
    uint8_t oss = 0;
    int32_t p;

    if (lua_isnumber(L, 1)) {
        oss = luaL_checkinteger(L, 1);
        if (oss > 3) {
            oss = 3;
        }
    }

    p = bmp085_pressure_raw(oss);
    lua_pushinteger(L, p);
    return 1;
}
