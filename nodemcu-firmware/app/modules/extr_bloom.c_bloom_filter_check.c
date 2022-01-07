
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int lua_State ;
typedef int bloom_t ;


 int add_or_check (int const*,size_t,int *,int) ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int lua_pushboolean (int *,int) ;

__attribute__((used)) static int bloom_filter_check(lua_State *L) {
  bloom_t *filter = (bloom_t *)luaL_checkudata(L, 1, "bloom.filter");
  size_t length;
  const uint8 *buffer = (uint8 *) luaL_checklstring(L, 2, &length);

  bool rc = add_or_check(buffer, length, filter, 0);

  lua_pushboolean(L, rc);
  return 1;
}
