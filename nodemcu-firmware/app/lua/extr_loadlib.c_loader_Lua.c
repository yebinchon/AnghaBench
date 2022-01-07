
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* findfile (int *,char const*,char*) ;
 int loaderror (int *,char const*) ;
 char* luaL_checkstring (int *,int) ;
 scalar_t__ luaL_loadfile (int *,char const*) ;
 scalar_t__ luaL_loadfsfile (int *,char const*) ;

__attribute__((used)) static int loader_Lua (lua_State *L) {
  const char *filename;
  const char *name = luaL_checkstring(L, 1);
  filename = findfile(L, name, "path");
  if (filename == ((void*)0)) return 1;



  if (luaL_loadfsfile(L, filename) != 0)

    loaderror(L, filename);
  return 1;
}
