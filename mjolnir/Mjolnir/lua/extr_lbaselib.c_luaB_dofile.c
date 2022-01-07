
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MULTRET ;
 scalar_t__ LUA_OK ;
 int dofilecont (int *,int ,int ) ;
 scalar_t__ luaL_loadfile (int *,char const*) ;
 char* luaL_optstring (int *,int,int *) ;
 int lua_callk (int *,int ,int ,int ,int (*) (int *,int ,int )) ;
 int lua_error (int *) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int luaB_dofile (lua_State *L) {
  const char *fname = luaL_optstring(L, 1, ((void*)0));
  lua_settop(L, 1);
  if (luaL_loadfile(L, fname) != LUA_OK)
    return lua_error(L);
  lua_callk(L, 0, LUA_MULTRET, 0, dofilecont);
  return dofilecont(L, 0, 0);
}
