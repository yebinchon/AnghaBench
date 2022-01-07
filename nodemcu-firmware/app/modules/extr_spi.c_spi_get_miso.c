
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlstring (int *,int *,int) ;
 int spi ;
 int spi_mast_blkget (int,int,int *) ;
 int spi_mast_get_miso (int,int,int) ;

__attribute__((used)) static int spi_get_miso( lua_State *L )
{
  int id = luaL_checkinteger( L, 1 );

  MOD_CHECK_ID( spi, id );

  if (lua_gettop( L ) == 2) {
    uint8_t data[64];
    int len = luaL_checkinteger( L, 2 );

    luaL_argcheck( L, 2, len >= 1 && len <= 64, "out of range" );

    spi_mast_blkget( id, len * 8, data );

    lua_pushlstring( L, data, len );
    return 1;

  } else {
    int offset = luaL_checkinteger( L, 2 );
    int bitlen = luaL_checkinteger( L, 3 );
    int num = luaL_checkinteger( L, 4 ), i;

    luaL_argcheck( L, 2, offset >= 0 && offset <= 511, "out of range" );
    luaL_argcheck( L, 3, bitlen >= 1 && bitlen <= 32, "out of range" );

    if (offset + bitlen * num > 512) {
      return luaL_error( L, "out of range" );
    }

    for (i = 0; i < num; i++) {
      lua_pushinteger( L, spi_mast_get_miso( id, offset + (bitlen * i), bitlen ) );
    }
    return num;
  }
}
