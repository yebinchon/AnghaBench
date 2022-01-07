
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_INIT ;
 char* LUA_INIT_STRING ;
 int dofsfile (int *,char const*) ;
 int dostring (int *,char const*,int ) ;

__attribute__((used)) static int handle_luainit (lua_State *L) {
  const char *init = LUA_INIT_STRING;
  if (init[0] == '@')
    return dofsfile(L, init+1);
  else
    return dostring(L, init, LUA_INIT);
}
