
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int f; } ;
typedef TYPE_1__ LStream ;


 int aux_close (int *) ;
 int g_read (int *,int ,int) ;
 scalar_t__ isclosed (TYPE_1__*) ;
 int luaL_checkstack (int *,int,char*) ;
 int luaL_error (int *,char*,...) ;
 int lua_assert (int) ;
 int lua_pushvalue (int *,int) ;
 int lua_settop (int *,int) ;
 scalar_t__ lua_toboolean (int *,int) ;
 scalar_t__ lua_tointeger (int *,int) ;
 int lua_tostring (int *,int) ;
 scalar_t__ lua_touserdata (int *,int) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static int io_readline (lua_State *L) {
  LStream *p = (LStream *)lua_touserdata(L, lua_upvalueindex(1));
  int i;
  int n = (int)lua_tointeger(L, lua_upvalueindex(2));
  if (isclosed(p))
    return luaL_error(L, "file is already closed");
  lua_settop(L , 1);
  luaL_checkstack(L, n, "too many arguments");
  for (i = 1; i <= n; i++)
    lua_pushvalue(L, lua_upvalueindex(3 + i));
  n = g_read(L, p->f, 2);
  lua_assert(n > 0);
  if (lua_toboolean(L, -n))
    return n;
  else {
    if (n > 1) {

      return luaL_error(L, "%s", lua_tostring(L, -n + 1));
    }
    if (lua_toboolean(L, lua_upvalueindex(3))) {
      lua_settop(L, 0);
      lua_pushvalue(L, lua_upvalueindex(1));
      aux_close(L);
    }
    return 0;
  }
}
