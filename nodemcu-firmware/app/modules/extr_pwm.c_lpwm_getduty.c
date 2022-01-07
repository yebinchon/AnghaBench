
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int platform_pwm_get_duty (unsigned int) ;
 int pwm ;

__attribute__((used)) static int lpwm_getduty( lua_State* L )
{
  unsigned id;
  u32 duty;

  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( pwm, id );
  duty = platform_pwm_get_duty( id );
  lua_pushinteger( L, duty );
  return 1;
}
