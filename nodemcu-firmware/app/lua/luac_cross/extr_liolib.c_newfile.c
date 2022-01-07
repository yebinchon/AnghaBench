
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int LUA_FILEHANDLE ;
 int luaL_getmetatable (int *,int ) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;

__attribute__((used)) static FILE **newfile (lua_State *L) {
  FILE **pf = (FILE **)lua_newuserdata(L, sizeof(FILE *));
  *pf = ((void*)0);
  luaL_getmetatable(L, LUA_FILEHANDLE);
  lua_setmetatable(L, -2);
  return pf;
}
