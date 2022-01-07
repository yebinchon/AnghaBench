
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;
typedef int IdxT ;


 int INT_MAX ;
 int LUA_TFUNCTION ;
 int TAB_RW ;
 int aux_getn (int *,int,int ) ;
 int auxsort (int *,int,int ,int ) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checktype (int *,int,int ) ;
 int lua_isnoneornil (int *,int) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int sort (lua_State *L) {
  lua_Integer n = aux_getn(L, 1, TAB_RW);
  if (n > 1) {
    luaL_argcheck(L, n < INT_MAX, 1, "array too big");
    if (!lua_isnoneornil(L, 2))
      luaL_checktype(L, 2, LUA_TFUNCTION);
    lua_settop(L, 2);
    auxsort(L, 1, (IdxT)n, 0);
  }
  return 0;
}
