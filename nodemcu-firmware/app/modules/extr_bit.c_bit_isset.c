
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_UInteger ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int lua_pushboolean (int *,int) ;

__attribute__((used)) static int bit_isset( lua_State* L )
{
  lua_UInteger val = ( lua_UInteger )luaL_checkinteger( L, 1 );
  unsigned pos = ( unsigned )luaL_checkinteger( L, 2 );

  lua_pushboolean( L, val & ( 1 << pos ) ? 1 : 0 );
  return 1;
}
