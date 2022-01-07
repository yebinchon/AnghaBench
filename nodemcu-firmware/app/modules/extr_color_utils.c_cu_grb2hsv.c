
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int lua_State ;


 int grb2hsv (int const,int const,int const) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkint (int *,int) ;
 int lua_pushnumber (int *,int) ;

__attribute__((used)) static int cu_grb2hsv(lua_State *L) {

  const int g = luaL_checkint(L, 1);
  const int r = luaL_checkint(L, 2);
  const int b = luaL_checkint(L, 3);

  luaL_argcheck(L, g == r && g == b, 1, "greyscale value cannot be converted to hsv");

  uint32_t hsv = grb2hsv(g, r, b);

  uint16_t h = (hsv & 0xFFFF0000) >> 16;
  uint8_t s = (hsv & 0x0000FF00) >> 8;
  uint8_t v = (hsv & 0x000000FF) >> 0;


  lua_pushnumber(L, h);
  lua_pushnumber(L, s);
  lua_pushnumber(L, v);

  return 3;
}
