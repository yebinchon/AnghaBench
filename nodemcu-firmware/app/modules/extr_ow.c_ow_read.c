
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int onewire_read (unsigned int) ;
 int ow ;

__attribute__((used)) static int ow_read( lua_State *L )
{
  unsigned id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( ow, id );
  lua_pushinteger( L, onewire_read(id) );
  return 1;
}
