
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 size_t cronent_count ;
 int * cronent_list ;
 int free (int *) ;
 int luaL_unref (int *,int ,int ) ;

__attribute__((used)) static int lcron_reset(lua_State *L) {
  for (size_t i = 0; i < cronent_count; i++) {
    luaL_unref(L, LUA_REGISTRYINDEX, cronent_list[i]);
  }
  cronent_count = 0;
  free(cronent_list);
  cronent_list = 0;
  return 0;
}
