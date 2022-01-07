
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int errno ;
 int luaL_argerror (int *,int,int ) ;
 int lua_pushfstring (int *,char*,char const*,int ) ;
 int lua_tostring (int *,int) ;
 int strerror (int ) ;

__attribute__((used)) static void fileerror (lua_State *L, int arg, const char *filename) {
  lua_pushfstring(L, "%s: %s", filename, strerror(errno));
  luaL_argerror(L, arg, lua_tostring(L, -1));
}
