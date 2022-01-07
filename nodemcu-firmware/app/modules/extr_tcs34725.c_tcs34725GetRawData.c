
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int lua_State ;


 int TCS34725_BDATAL ;
 int TCS34725_CDATAL ;
 int TCS34725_GDATAL ;
 int TCS34725_RDATAL ;
 int _tcs34725Initialised ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int ) ;
 int tcs34725Read16 (int ) ;

uint8_t tcs34725GetRawData(lua_State* L)
{
 uint16_t r;
 uint16_t g;
 uint16_t b;
 uint16_t c;

 if (!_tcs34725Initialised)
 {
  return luaL_error(L, "TCS34725 not initialised.");
 }

 c = tcs34725Read16(TCS34725_CDATAL);
 r = tcs34725Read16(TCS34725_RDATAL);
 g = tcs34725Read16(TCS34725_GDATAL);
 b = tcs34725Read16(TCS34725_BDATAL);
 lua_pushinteger(L, c);
 lua_pushinteger(L, r);
 lua_pushinteger(L, g);
 lua_pushinteger(L, b);
 return 4;
}
