
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ StkId ;


 int luaR_next (int *,void*,scalar_t__,scalar_t__) ;
 scalar_t__ ttisnil (scalar_t__) ;

int luaH_next_ro (lua_State *L, void *t, StkId key) {
  luaR_next(L, t, key, key+1);
  return ttisnil(key) ? 0 : 1;
}
