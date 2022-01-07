
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Debug ;


 int * getthread (int *,int*) ;
 int luaL_argerror (int *,int,char*) ;
 int luaL_checkint (int *,int) ;
 char* lua_getlocal (int *,int *,int ) ;
 int lua_getstack (int *,int ,int *) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 int lua_pushvalue (int *,int) ;
 int lua_xmove (int *,int *,int) ;

__attribute__((used)) static int db_getlocal (lua_State *L) {
  int arg;
  lua_State *L1 = getthread(L, &arg);
  lua_Debug ar;
  const char *name;
  if (!lua_getstack(L1, luaL_checkint(L, arg+1), &ar))
    return luaL_argerror(L, arg+1, "level out of range");
  name = lua_getlocal(L1, &ar, luaL_checkint(L, arg+2));
  if (name) {
    lua_xmove(L1, L, 1);
    lua_pushstring(L, name);
    lua_pushvalue(L, -2);
    return 2;
  }
  else {
    lua_pushnil(L);
    return 1;
  }
}
