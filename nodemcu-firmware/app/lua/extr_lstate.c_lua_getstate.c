
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int * lua_crtstate ;

lua_State *lua_getstate(void) {
  return lua_crtstate;
}
