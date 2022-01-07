
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef void* s32 ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 unsigned int NORMAL_PWM_DEPTH ;
 void* luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,void*) ;
 void* platform_pwm_setup (unsigned int,int ,unsigned int) ;
 int pwm ;

__attribute__((used)) static int lpwm_setup( lua_State* L )
{
  s32 freq;
  unsigned duty;
  unsigned id;

  id = luaL_checkinteger( L, 1 );
  if(id==0)
    return luaL_error( L, "no pwm for D0" );
  MOD_CHECK_ID( pwm, id );
  freq = luaL_checkinteger( L, 2 );
  if ( freq <= 0 )
    return luaL_error( L, "wrong arg range" );
  duty = luaL_checkinteger( L, 3 );
  if ( duty > NORMAL_PWM_DEPTH )

    return luaL_error( L, "wrong arg range" );
  freq = platform_pwm_setup( id, (u32)freq, duty );
  if(freq==0)
    return luaL_error( L, "too many pwms." );
  lua_pushinteger( L, freq );
  return 1;
}
