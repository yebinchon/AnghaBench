
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MULTRET ;
 scalar_t__ luaL_loadfile (int *,char const*) ;
 scalar_t__ luaL_loadfsfile (int *,char const*) ;
 char* luaL_optstring (int *,int,int *) ;
 int lua_call (int *,int ,int ) ;
 int lua_error (int *) ;
 int lua_gettop (int *) ;

__attribute__((used)) static int luaB_dofile (lua_State *L) {
  const char *fname = luaL_optstring(L, 1, ((void*)0));
  int n = lua_gettop(L);



  if (luaL_loadfsfile(L, fname) != 0) lua_error(L);

  lua_call(L, 0, LUA_MULTRET);
  return lua_gettop(L) - n;
}
