
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int int32_t ;


 double bme280_qfe2qnh (int ,int ) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_isnumber (int *,int) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int bme680_lua_qfe2qnh(lua_State* L) {
 if (!lua_isnumber(L, 2)) {
  return luaL_error(L, "wrong arg range");
 }
 int32_t qfe = luaL_checkinteger(L, 1);
 int32_t h = luaL_checkinteger(L, 2);
 double qnh = bme280_qfe2qnh(qfe, h);
 lua_pushinteger(L, (int32_t)(qnh + 0.5));
 return 1;
}
