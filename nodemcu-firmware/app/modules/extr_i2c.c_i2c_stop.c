
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 int i2c ;
 unsigned int luaL_checkinteger (int *,int) ;
 int platform_i2c_send_stop (unsigned int) ;

__attribute__((used)) static int i2c_stop( lua_State *L )
{
  unsigned id = luaL_checkinteger( L, 1 );

  MOD_CHECK_ID( i2c, id );
  platform_i2c_send_stop( id );
  return 0;
}
