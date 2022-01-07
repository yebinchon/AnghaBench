
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_UInteger ;
typedef int lua_State ;
typedef int lua_Integer ;


 scalar_t__ luaL_checkinteger (int *,unsigned int) ;
 unsigned int lua_gettop (int *) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int bit_clear( lua_State* L )
{
  lua_UInteger val = ( lua_UInteger )luaL_checkinteger( L, 1 );
  unsigned total = lua_gettop( L ), i;

  for( i = 2; i <= total; i ++ )
    val &= ~( 1 << ( unsigned )luaL_checkinteger( L, i ) );
  lua_pushinteger( L, ( lua_Integer )val );
  return 1;
}
