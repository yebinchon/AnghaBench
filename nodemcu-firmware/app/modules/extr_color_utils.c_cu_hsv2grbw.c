
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lua_State ;


 int hsv2grbw (int const,int const,int const) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkint (int *,int) ;
 int lua_pushnumber (int *,int) ;

__attribute__((used)) static int cu_hsv2grbw(lua_State *L) {
  const int hue = luaL_checkint(L, 1);
  const int sat = luaL_checkint(L, 2);
  const int val = luaL_checkint(L, 3);

  luaL_argcheck(L, hue >= 0 && hue <= 360, 1, "should be a 0-360");
  luaL_argcheck(L, sat >= 0 && sat <= 255, 2, "should be 0-255");
  luaL_argcheck(L, val >= 0 && val <= 255, 3, "should be 0-255");


  uint32_t tmp_color = hsv2grbw(hue, sat, val);


  lua_pushnumber(L, (tmp_color & 0xFF000000) >> 24);
  lua_pushnumber(L, (tmp_color & 0x00FF0000) >> 16);
  lua_pushnumber(L, (tmp_color & 0x0000FF00) >> 8);
  lua_pushnumber(L, (tmp_color & 0x000000FF));

  return 4;
}
