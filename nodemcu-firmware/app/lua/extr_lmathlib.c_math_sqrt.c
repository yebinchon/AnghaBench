
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_Number ;


 int isqrt (scalar_t__) ;
 int luaL_argcheck (int *,int,int,char*) ;
 scalar_t__ luaL_checknumber (int *,int) ;
 int lua_pushnumber (int *,int ) ;
 int sqrt (scalar_t__) ;

__attribute__((used)) static int math_sqrt (lua_State *L) {





  lua_pushnumber(L, sqrt(luaL_checknumber(L, 1)));

  return 1;
}
