
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int * luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_tointeger (int *,int) ;
 int onewire_write_bytes (int ,int const*,int ,int ) ;
 int ow ;

__attribute__((used)) static int ow_write_bytes( lua_State *L )
{
  int power = 0;
  size_t datalen;
  unsigned id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( ow, id );

  const uint8_t *pdata = luaL_checklstring( L, 2, &datalen );

  if(lua_isnumber(L, 3))
    power = lua_tointeger(L, 3);
  if(power!=0)
    power = 1;

  onewire_write_bytes((uint8_t)id, pdata, (uint16_t)datalen, (uint8_t)power);

  return 0;
}
