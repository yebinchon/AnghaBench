
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,int) ;
 int PLATFORM_SPI_CPHA_HIGH ;
 int PLATFORM_SPI_CPHA_LOW ;
 int PLATFORM_SPI_CPOL_HIGH ;
 int PLATFORM_SPI_CPOL_LOW ;
 int PLATFORM_SPI_MASTER ;
 int PLATFORM_SPI_SLAVE ;
 int SPI_FULLDUPLEX ;
 int SPI_HALFDUPLEX ;
 void* luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int luaL_optinteger (int *,int,int) ;
 int lua_pushinteger (int *,int) ;
 int platform_spi_setup (int,int,int,int,int) ;
 int spi ;
 int* spi_databits ;
 int* spi_duplex ;

__attribute__((used)) static int spi_setup( lua_State *L )
{
  int id = luaL_checkinteger( L, 1 );
  int mode = luaL_checkinteger( L, 2 );
  int cpol = luaL_checkinteger( L, 3 );
  int cpha = luaL_checkinteger( L, 4 );
  int databits = luaL_checkinteger( L, 5 );
  u32 clock_div = luaL_checkinteger( L, 6 );
  int duplex_mode = luaL_optinteger( L, 7, SPI_HALFDUPLEX );

  MOD_CHECK_ID( spi, id );

  if (mode != PLATFORM_SPI_SLAVE && mode != PLATFORM_SPI_MASTER) {
    return luaL_error( L, "wrong arg type" );
  }

  if (cpol != PLATFORM_SPI_CPOL_LOW && cpol != PLATFORM_SPI_CPOL_HIGH) {
    return luaL_error( L, "wrong arg type" );
  }

  if (cpha != PLATFORM_SPI_CPHA_LOW && cpha != PLATFORM_SPI_CPHA_HIGH) {
    return luaL_error( L, "wrong arg type" );
  }

  if (databits < 0 || databits > 32) {
    return luaL_error( L, "out of range" );
  }

  if (clock_div == 0) {

    clock_div = 8;
  }

  if (duplex_mode == SPI_HALFDUPLEX || duplex_mode == SPI_FULLDUPLEX)
  {
    spi_duplex[id] = duplex_mode;
  }
  else
  {
    return luaL_error( L, "out of range" );
  }

  spi_databits[id] = databits;

  u32 res = platform_spi_setup(id, mode, cpol, cpha, clock_div);
  lua_pushinteger( L, res );
  return 1;
}
