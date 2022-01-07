
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int bmp085_temperature () ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int bmp085_lua_temperature(lua_State* L) {
    lua_pushinteger(L, bmp085_temperature());
    return 1;
}
