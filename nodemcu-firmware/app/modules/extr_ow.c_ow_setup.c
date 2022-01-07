
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int onewire_init (unsigned int) ;
 int ow ;

__attribute__((used)) static int ow_setup( lua_State *L )
{
  unsigned id = luaL_checkinteger( L, 1 );

  if(id==0)
    return luaL_error( L, "no 1-wire for D0" );

  MOD_CHECK_ID( ow, id );

  onewire_init( id );
  return 0;
}
