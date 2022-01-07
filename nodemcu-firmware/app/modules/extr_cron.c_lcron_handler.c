
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int cb_ref; } ;
typedef TYPE_1__ cronent_ud_t ;


 int LUA_REGISTRYINDEX ;
 int luaL_checkanyfunction (int *,int) ;
 TYPE_1__* luaL_checkudata (int *,int,char*) ;
 int luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,int ) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static int lcron_handler(lua_State *L) {
  cronent_ud_t *ud = luaL_checkudata(L, 1, "cron.entry");
  luaL_checkanyfunction(L, 2);
  lua_pushvalue(L, 2);
  luaL_unref(L, LUA_REGISTRYINDEX, ud->cb_ref);
  ud->cb_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  return 0;
}
