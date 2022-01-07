
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int platform_pwm_start (unsigned int) ;
 int pwm ;

__attribute__((used)) static int lpwm_start( lua_State* L )
{
  unsigned id;
  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( pwm, id );
  if (!platform_pwm_start( id )) {
    return luaL_error(L, "Unable to start PWM output");
  }
  return 0;
}
