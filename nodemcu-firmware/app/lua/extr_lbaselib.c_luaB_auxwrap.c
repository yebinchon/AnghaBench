
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int auxresume (int *,int *,int ) ;
 int luaL_where (int *,int) ;
 int lua_concat (int *,int) ;
 int lua_error (int *) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 int * lua_tothread (int *,int ) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static int luaB_auxwrap (lua_State *L) {
  lua_State *co = lua_tothread(L, lua_upvalueindex(1));
  int r = auxresume(L, co, lua_gettop(L));
  if (r < 0) {
    if (lua_isstring(L, -1)) {
      luaL_where(L, 1);
      lua_insert(L, -2);
      lua_concat(L, 2);
    }
    lua_error(L);
  }
  return r;
}
