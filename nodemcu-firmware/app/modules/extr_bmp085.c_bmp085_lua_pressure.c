
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lua_State ;
typedef int int32_t ;
struct TYPE_2__ {scalar_t__ AC4; scalar_t__ B1; scalar_t__ AC3; scalar_t__ AC1; scalar_t__ AC2; scalar_t__ B2; } ;


 TYPE_1__ bmp085_data ;
 int bmp085_pressure_raw (int) ;
 int bmp085_temperature_raw_b5 () ;
 int luaL_checkinteger (int *,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_pushinteger (int *,int) ;

__attribute__((used)) static int bmp085_lua_pressure(lua_State* L) {
    uint8_t oss = 0;
    int32_t p;
    int32_t X1, X2, X3, B3, B4, B5, B6, B7;

    if (lua_isnumber(L, 1)) {
        oss = luaL_checkinteger(L, 1);
        if (oss > 3) {
            oss = 3;
        }
    }

    p = bmp085_pressure_raw(oss);
    B5 = bmp085_temperature_raw_b5();

    B6 = B5 - 4000;
    X1 = ((int32_t)bmp085_data.B2 * ((B6 * B6) >> 12)) >> 11;
    X2 = ((int32_t)bmp085_data.AC2 * B6) >> 11;
    X3 = X1 + X2;
    B3 = ((((int32_t)bmp085_data.AC1 << 2) + X3) * (1 << oss) + 2) >> 2;
    X1 = ((int32_t)bmp085_data.AC3 * B6) >> 13;
    X2 = ((int32_t)bmp085_data.B1 * ((B6 * B6) >> 12)) >> 16;
    X3 = (X1 + X2 + 2) >> 2;
    B4 = ((int32_t)bmp085_data.AC4 * (X3 + 32768)) >> 15;
    B7 = (p - B3) * (50000 / (1 << oss));
    p = (B7 / B4) << 1;
    X1 = (p >> 8) * (p >> 8);
    X1 = (X1 * 3038) >> 16;
    X2 = (-7357 * p) >> 16;
    p = p + ((X1 + X2 + 3791) >> 4);

    lua_pushinteger(L, p);
    return 1;
}
