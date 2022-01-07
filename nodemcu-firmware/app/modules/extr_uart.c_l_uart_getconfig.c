
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,int ) ;
 int luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int platform_uart_get_config (int ,int *,int *,int *,int *) ;
 int uart ;

__attribute__((used)) static int l_uart_getconfig( lua_State* L )
{
  uint32_t id, databits, parity, stopbits;
  uint32_t baud;

  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( uart, id );

  platform_uart_get_config(id, &baud, &databits, &parity, &stopbits);

  lua_pushinteger(L, baud);
  lua_pushinteger(L, databits);
  lua_pushinteger(L, parity);
  lua_pushinteger(L, stopbits);
  return 4;
}
