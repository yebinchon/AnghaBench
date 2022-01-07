
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_optstring (int *,int,int *) ;
 int lua_pushinteger (int *,int ) ;
 int system (int ) ;

__attribute__((used)) static int os_execute (lua_State *L) {
  lua_pushinteger(L, system(luaL_optstring(L, 1, ((void*)0))));
  return 1;
}
