
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int platform_pwm_get_clock (unsigned int) ;
 int pwm ;

__attribute__((used)) static int lpwm_getclock( lua_State* L )
{
  unsigned id;
  u32 clk;

  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( pwm, id );
  clk = platform_pwm_get_clock( id );
  lua_pushinteger( L, clk );
  return 1;
}
