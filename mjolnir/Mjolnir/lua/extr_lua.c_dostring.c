
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int dochunk (int *,int ) ;
 int luaL_loadbuffer (int *,char const*,int ,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int dostring (lua_State *L, const char *s, const char *name) {
  return dochunk(L, luaL_loadbuffer(L, s, strlen(s), name));
}
