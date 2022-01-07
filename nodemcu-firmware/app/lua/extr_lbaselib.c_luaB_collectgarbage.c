
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;




 int const LUA_GCCOUNTB ;







 int luaL_checkoption (int *,int,char*,char const* const*) ;
 int luaL_optint (int *,int,int ) ;
 int lua_gc (int *,int const,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushnumber (int *,int) ;

__attribute__((used)) static int luaB_collectgarbage (lua_State *L) {
  static const char *const opts[] = {"stop", "restart", "collect",
    "count", "step", "setpause", "setstepmul","setmemlimit","getmemlimit", ((void*)0)};
  static const int optsnum[] = {128, 133, 136,
    135, 129, 131, 130,
  132,134};
  int o = luaL_checkoption(L, 1, "collect", opts);
  int ex = luaL_optint(L, 2, 0);
  int res = lua_gc(L, optsnum[o], ex);
  switch (optsnum[o]) {
    case 135: {
      int b = lua_gc(L, LUA_GCCOUNTB, 0);
      lua_pushnumber(L, res + ((lua_Number)b/1024));
      return 1;
    }
    case 129: {
      lua_pushboolean(L, res);
      return 1;
    }
    default: {
      lua_pushnumber(L, res);
      return 1;
    }
  }
}
