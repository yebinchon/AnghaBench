
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ int32_t ;


 scalar_t__ luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_isnumber (int *,int) ;
 int lua_pushinteger (int *,scalar_t__) ;
 double pow (double,double) ;

__attribute__((used)) static int bme680_lua_altitude(lua_State* L) {
 if (!lua_isnumber(L, 2)) {
  return luaL_error(L, "wrong arg range");
 }
 int32_t P = luaL_checkinteger(L, 1);
 int32_t qnh = luaL_checkinteger(L, 2);
 double h = (1.0 - pow((double)P/(double)qnh, 1.0/5.25588)) / 2.25577e-5 * 100.0;

 lua_pushinteger(L, (int32_t)(h + (((h<0)?-1:(h>0)) * 0.5)));
 return 1;
}
