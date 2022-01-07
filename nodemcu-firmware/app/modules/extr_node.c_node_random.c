
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;


 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkint (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_pushnumber (int *,int) ;
 int node_random_range (int,int) ;
 int os_random () ;

__attribute__((used)) static int node_random (lua_State *L) {
  int u;
  int l;

  switch (lua_gettop(L)) {
    case 0: {



      lua_pushnumber(L, (lua_Number)os_random() / (lua_Number)(1LL << 32));

      return 1;
    }
    case 1: {
      l = 1;
      u = luaL_checkint(L, 1);
      break;
    }
    case 2: {
      l = luaL_checkint(L, 1);
      u = luaL_checkint(L, 2);
      break;
    }
    default:
      return luaL_error(L, "wrong number of arguments");
  }
  luaL_argcheck(L, l<=u, 2, "interval is empty");
  lua_pushnumber(L, node_random_range(l, u));
  return 1;
}
