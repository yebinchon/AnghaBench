
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ s32 ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 int gpio ;
 int i2c ;
 unsigned int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*,...) ;
 int lua_pushinteger (int *,scalar_t__) ;
 scalar_t__ platform_i2c_setup (unsigned int,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int i2c_setup( lua_State *L )
{
  unsigned id = luaL_checkinteger( L, 1 );
  unsigned sda = luaL_checkinteger( L, 2 );
  unsigned scl = luaL_checkinteger( L, 3 );

  MOD_CHECK_ID( i2c, id );
  MOD_CHECK_ID( gpio, sda );
  MOD_CHECK_ID( gpio, scl );

  if ( sda == 0 )
    return luaL_error( L, "i2c SDA on D0 is not supported" );

  s32 speed = ( s32 )luaL_checkinteger( L, 4 );
  if ( speed <= 0 )
    return luaL_error( L, "wrong arg range" );
  speed = platform_i2c_setup( id, sda, scl, (u32)speed );
  if ( speed == 0 )
    return luaL_error( L, "failed to initialize i2c %d", id );
  lua_pushinteger( L, speed );
  return 1;
}
