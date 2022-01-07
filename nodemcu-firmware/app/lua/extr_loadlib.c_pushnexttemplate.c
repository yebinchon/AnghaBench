
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char const* LUA_PATHSEP ;
 int lua_pushlstring (int *,char const*,int) ;
 char* strchr (char const*,char const) ;
 int strlen (char const*) ;

__attribute__((used)) static const char * pushnexttemplate (lua_State *L, const char *path) {
  const char *l;
  while (*path == *LUA_PATHSEP) path++;
  if (*path == '\0') return ((void*)0);
  l = strchr(path, *LUA_PATHSEP);
  if (l == ((void*)0)) l = path + strlen(path);
  lua_pushlstring(L, path, l - path);
  return l;
}
