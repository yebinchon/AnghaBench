
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;


 int color_wheel (int const) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkint (int *,int) ;
 int lua_pushnumber (int *,int) ;

__attribute__((used)) static int cu_color_wheel(lua_State *L) {
  const int wheel_index = luaL_checkint(L, 1);

  luaL_argcheck(L, wheel_index >= 0 && wheel_index <= 360, 1, "should be a 0-360");

  uint32_t color = color_wheel(wheel_index);

  uint8_t r = (color & 0x00FF0000) >> 16;
  uint8_t g = (color & 0x0000FF00) >> 8;
  uint8_t b = (color & 0x000000FF) >> 0;


  lua_pushnumber(L, g);
  lua_pushnumber(L, r);
  lua_pushnumber(L, b);

  return 3;
}
