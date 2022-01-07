
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int * luaL_newstate () ;
 int * lua_crtstate ;

lua_State *lua_open(void) {
  lua_crtstate = luaL_newstate();
  return lua_crtstate;
}
