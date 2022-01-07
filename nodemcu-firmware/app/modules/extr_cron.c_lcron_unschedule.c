
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int cronent_ud_t ;


 int LUA_REGISTRYINDEX ;
 size_t cronent_count ;
 int * cronent_list ;
 size_t lcron_findindex (int *,int *) ;
 int * luaL_checkudata (int *,int,char*) ;
 int luaL_unref (int *,int ,int ) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static int lcron_unschedule(lua_State *L) {
  cronent_ud_t *ud = luaL_checkudata(L, 1, "cron.entry");
  size_t i = lcron_findindex(L, ud);
  if (i == -1) return 0;
  luaL_unref(L, LUA_REGISTRYINDEX, cronent_list[i]);
  memmove(cronent_list + i, cronent_list + i + 1, sizeof(int) * (cronent_count - i - 1));
  cronent_count--;
  return 0;
}
