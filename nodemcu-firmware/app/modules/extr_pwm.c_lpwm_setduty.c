
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef void* s32 ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 void* NORMAL_PWM_DEPTH ;
 void* luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,void*) ;
 void* platform_pwm_set_duty (unsigned int,int ) ;
 int pwm ;

__attribute__((used)) static int lpwm_setduty( lua_State* L )
{
  unsigned id;
  s32 duty;

  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( pwm, id );
  duty = luaL_checkinteger( L, 2 );
  if ( duty > NORMAL_PWM_DEPTH )
    return luaL_error( L, "wrong arg range" );
  duty = platform_pwm_set_duty( id, (u32)duty );
  lua_pushinteger( L, duty );
  return 1;
}
