
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int lua_pushboolean (int *,int) ;
 int pwm2_start () ;

__attribute__((used)) static int lpwm2_start(lua_State *L) {
  if (!pwm2_start()) {
    luaL_error(L, "pwm2: currently platform timer1 is being used by another module.\n");
    lua_pushboolean(L, 0);
  } else {
    lua_pushboolean(L, 1);
  }
  return 1;
}
