
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int cronent_ud_t ;


 int LUA_REGISTRYINDEX ;
 size_t cronent_count ;
 int * cronent_list ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int ,int ) ;
 int * lua_touserdata (int *,int) ;

__attribute__((used)) static size_t lcron_findindex(lua_State *L, cronent_ud_t *ud) {
  cronent_ud_t *eud;
  size_t i;
  for (i = 0; i < cronent_count; i++) {
    lua_rawgeti(L, LUA_REGISTRYINDEX, cronent_list[i]);
    eud = lua_touserdata(L, -1);
    lua_pop(L, 1);
    if (eud == ud) break;
  }
  if (i == cronent_count) return -1;
  return i;
}
