
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int lua_State ;
typedef int luaL_Buffer ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 int i2c ;
 int luaL_addchar (int *,char) ;
 int luaL_buffinit (int *,int *) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int luaL_pushresult (int *) ;
 int platform_i2c_recv_byte (unsigned int,int) ;

__attribute__((used)) static int i2c_read( lua_State *L )
{
  unsigned id = luaL_checkinteger( L, 1 );
  u32 size = ( u32 )luaL_checkinteger( L, 2 ), i;
  luaL_Buffer b;
  int data;

  MOD_CHECK_ID( i2c, id );
  if( size == 0 )
    return 0;
  luaL_buffinit( L, &b );
  for( i = 0; i < size; i ++ )
    if( ( data = platform_i2c_recv_byte( id, i < size - 1 ) ) == -1 )
      break;
    else
      luaL_addchar( &b, ( char )data );
  luaL_pushresult( &b );
  return 1;
}
