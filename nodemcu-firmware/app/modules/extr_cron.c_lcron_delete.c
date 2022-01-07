
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int cb_ref; } ;
typedef TYPE_1__ cronent_ud_t ;


 int LUA_REGISTRYINDEX ;
 int lcron_unschedule (int *) ;
 TYPE_1__* luaL_checkudata (int *,int,char*) ;
 int luaL_unref (int *,int ,int ) ;

__attribute__((used)) static int lcron_delete(lua_State *L) {
  cronent_ud_t *ud = luaL_checkudata(L, 1, "cron.entry");
  lcron_unschedule(L);
  luaL_unref(L, LUA_REGISTRYINDEX, ud->cb_ref);
  return 0;
}
