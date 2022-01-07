
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int bit_bit( lua_State* L )
{
  lua_pushinteger( L, ( lua_Integer )( 1 << luaL_checkinteger( L, 1 ) ) );
  return 1;
}
