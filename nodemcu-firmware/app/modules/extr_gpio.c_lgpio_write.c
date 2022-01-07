
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 unsigned int HIGH ;
 unsigned int LOW ;
 int MOD_CHECK_ID (int ,unsigned int) ;
 int gpio ;
 int luaL_argcheck (int *,int,int,char*) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int platform_gpio_write (unsigned int,unsigned int) ;

__attribute__((used)) static int lgpio_write( lua_State* L )
{
  unsigned pin = luaL_checkinteger( L, 1 );
  unsigned level = luaL_checkinteger( L, 2 );

  MOD_CHECK_ID( gpio, pin );
  luaL_argcheck(L, level==HIGH || level==LOW, 2, "wrong level type" );

  platform_gpio_write(pin, level);
  return 0;
}
