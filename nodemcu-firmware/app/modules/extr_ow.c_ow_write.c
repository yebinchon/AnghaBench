
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_tointeger (int *,int) ;
 int onewire_write (int ,int ,int ) ;
 int ow ;

__attribute__((used)) static int ow_write( lua_State *L )
{
  int power = 0;
  unsigned id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( ow, id );

  int v = (int)luaL_checkinteger( L, 2 );
  if( v > 255 )
    return luaL_error( L, "wrong arg range" );
  if(lua_isnumber(L, 3))
    power = lua_tointeger(L, 3);
  if(power!=0)
    power = 1;

  onewire_write((uint8_t)id, (uint8_t)v, (uint8_t)power);

  return 0;
}
