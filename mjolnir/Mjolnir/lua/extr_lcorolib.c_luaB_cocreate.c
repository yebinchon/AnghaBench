
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TFUNCTION ;
 int luaL_checktype (int *,int,int ) ;
 int * lua_newthread (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_xmove (int *,int *,int) ;

__attribute__((used)) static int luaB_cocreate (lua_State *L) {
  lua_State *NL;
  luaL_checktype(L, 1, LUA_TFUNCTION);
  NL = lua_newthread(L);
  lua_pushvalue(L, 1);
  lua_xmove(L, NL, 1);
  return 1;
}
