
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int buffer_t ;


 int LROT_TABLEREF (int ) ;
 scalar_t__ LUA_TTABLE ;
 int * checkPipeUD (int *,int) ;
 int luaL_typerror (int *,int,char*) ;
 scalar_t__ lua_getmetatable (int *,int) ;
 int lua_gettop (int *) ;
 int lua_objlen (int *,int) ;
 int lua_pushrotable (int *,int ) ;
 scalar_t__ lua_rawequal (int *,int,int) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_settop (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int * newPipeUD (int *,int,int) ;
 int pipe_meta ;

__attribute__((used)) static buffer_t *checkPipeTable (lua_State *L, int tbl, int head) {
  int m = lua_gettop(L), n = lua_objlen(L, tbl);
  if (lua_type(L, tbl) == LUA_TTABLE && lua_getmetatable(L, tbl)) {
    lua_pushrotable(L, LROT_TABLEREF(pipe_meta));
    if (lua_rawequal(L, -1, -2)) {
      buffer_t *ud;
      if (n == 0) {
        ud = head ? ((void*)0) : newPipeUD(L, tbl, 1);
      } else {
        int i = head ? 1 : n;
        lua_rawgeti(L, tbl, i);
        ud = checkPipeUD(L, -1);
      }
      lua_settop(L, m);
      return ud;
    }
  }
  luaL_typerror(L, tbl, "pipe table");
  return ((void*)0);
}
