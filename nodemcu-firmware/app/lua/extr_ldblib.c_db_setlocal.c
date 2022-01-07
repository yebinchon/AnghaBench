
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Debug ;


 int * getthread (int *,int*) ;
 int luaL_argerror (int *,int,char*) ;
 int luaL_checkany (int *,int) ;
 int luaL_checkint (int *,int) ;
 int lua_getstack (int *,int ,int *) ;
 int lua_pushstring (int *,int ) ;
 int lua_setlocal (int *,int *,int ) ;
 int lua_settop (int *,int) ;
 int lua_xmove (int *,int *,int) ;

__attribute__((used)) static int db_setlocal (lua_State *L) {
  int arg;
  lua_State *L1 = getthread(L, &arg);
  lua_Debug ar;
  if (!lua_getstack(L1, luaL_checkint(L, arg+1), &ar))
    return luaL_argerror(L, arg+1, "level out of range");
  luaL_checkany(L, arg+3);
  lua_settop(L, arg+3);
  lua_xmove(L, L1, 1);
  lua_pushstring(L, lua_setlocal(L1, &ar, luaL_checkint(L, arg+2)));
  return 1;
}
