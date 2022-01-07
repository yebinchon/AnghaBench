
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 int i2c ;
 unsigned int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*,unsigned int) ;
 scalar_t__ platform_i2c_configured (unsigned int) ;
 int platform_i2c_send_start (unsigned int) ;

__attribute__((used)) static int i2c_start( lua_State *L )
{
  unsigned id = luaL_checkinteger( L, 1 );

  MOD_CHECK_ID( i2c, id );
  if (platform_i2c_configured( id ) )
      platform_i2c_send_start( id );
  else
      luaL_error( L, "i2c %d is not configured", id );
  return 0;
}
