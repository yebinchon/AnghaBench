
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,scalar_t__) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_pushinteger (int *,scalar_t__) ;
 scalar_t__ lua_tointeger (int *,int) ;
 scalar_t__ platform_uart_setup (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int uart ;
 int uart0_echo ;

__attribute__((used)) static int l_uart_setup( lua_State* L )
{
  uint32_t id, databits, parity, stopbits, echo = 1;
  uint32_t baud, res;

  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( uart, id );

  baud = luaL_checkinteger( L, 2 );
  databits = luaL_checkinteger( L, 3 );
  parity = luaL_checkinteger( L, 4 );
  stopbits = luaL_checkinteger( L, 5 );
  if(lua_isnumber(L,6)){
    echo = lua_tointeger(L,6);
    if(echo!=0)
      uart0_echo = 1;
    else
      uart0_echo = 0;
  }

  res = platform_uart_setup( id, baud, databits, parity, stopbits );
  lua_pushinteger( L, res );
  return 1;
}
