
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 unsigned int luaL_checkinteger (int *,int) ;
 int platform_uart_alt (unsigned int) ;

__attribute__((used)) static int l_uart_alt( lua_State* L )
{
  unsigned set;

  set = luaL_checkinteger( L, 1 );

  platform_uart_alt( set );
  return 0;
}
