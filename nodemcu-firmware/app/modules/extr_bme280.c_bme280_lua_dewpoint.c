
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int int32_t ;


 double const ln (double) ;
 double luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_isnumber (int *,int) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int bme280_lua_dewpoint(lua_State* L) {
 if (!lua_isnumber(L, 2)) {
  return luaL_error(L, "wrong arg range");
 }
 double H = luaL_checkinteger(L, 1)/100000.0;
 double T = luaL_checkinteger(L, 2)/100.0;

 const double c243 = 243.5;
 const double c17 = 17.67;
 double c = ln(H) + ((c17 * T) / (c243 + T));
 double d = (c243 * c)/(c17 - c) * 100.0;

 lua_pushinteger(L, (int32_t)(d + (((d<0)?-1:(d>0)) * 0.5)));
 return 1;
}
