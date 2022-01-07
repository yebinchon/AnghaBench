
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 int gpio ;
 unsigned int luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int platform_gpio_read (unsigned int) ;

__attribute__((used)) static int lgpio_read( lua_State* L )
{
  unsigned pin = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( gpio, pin );
  lua_pushinteger( L, platform_gpio_read( pin ) );
  return 1;
}
