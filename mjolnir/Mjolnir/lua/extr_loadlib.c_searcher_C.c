
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_CSUBSEP ;
 int checkload (int *,int,char const*) ;
 char* findfile (int *,char const*,char*,int ) ;
 scalar_t__ loadfunc (int *,char const*,char const*) ;
 char* luaL_checkstring (int *,int) ;

__attribute__((used)) static int searcher_C (lua_State *L) {
  const char *name = luaL_checkstring(L, 1);
  const char *filename = findfile(L, name, "cpath", LUA_CSUBSEP);
  if (filename == ((void*)0)) return 1;
  return checkload(L, (loadfunc(L, filename, name) == 0), filename);
}
