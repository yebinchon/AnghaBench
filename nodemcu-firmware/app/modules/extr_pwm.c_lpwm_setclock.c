
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef void* s32 ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 void* luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,void*) ;
 void* platform_pwm_set_clock (unsigned int,int ) ;
 int pwm ;

__attribute__((used)) static int lpwm_setclock( lua_State* L )
{
  unsigned id;
  s32 clk;

  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( pwm, id );
  clk = luaL_checkinteger( L, 2 );
  if ( clk <= 0 )
    return luaL_error( L, "wrong arg range" );
  clk = platform_pwm_set_clock( id, (u32)clk );
  lua_pushinteger( L, clk );
  return 1;
}
