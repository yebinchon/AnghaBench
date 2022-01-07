
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkinteger (int *,int) ;
 int spi ;
 int spi_mast_transaction (int,int,int ,int,int ,int,int,int) ;

__attribute__((used)) static int spi_transaction( lua_State *L )
{
  int id = luaL_checkinteger( L, 1 );

  MOD_CHECK_ID( spi, id );

  int cmd_bitlen = luaL_checkinteger( L, 2 );
  u16 cmd_data = ( u16 )luaL_checkinteger( L, 3 );
  luaL_argcheck( L, 2, cmd_bitlen >= 0 && cmd_bitlen <= 16, "out of range" );

  int addr_bitlen = luaL_checkinteger( L, 4 );
  u32 addr_data = ( u32 )luaL_checkinteger( L, 5 );
  luaL_argcheck( L, 4, addr_bitlen >= 0 && addr_bitlen <= 32, "out of range" );

  int mosi_bitlen = luaL_checkinteger( L, 6 );
  luaL_argcheck( L, 6, mosi_bitlen >= 0 && mosi_bitlen <= 512, "out of range" );

  int dummy_bitlen = luaL_checkinteger( L, 7 );
  luaL_argcheck( L, 7, dummy_bitlen >= 0 && dummy_bitlen <= 256, "out of range" );

  int miso_bitlen = luaL_checkinteger( L, 8 );
  luaL_argcheck( L, 8, miso_bitlen >= -512 && miso_bitlen <= 512, "out of range" );

  spi_mast_transaction( id, cmd_bitlen, cmd_data, addr_bitlen, addr_data,
   mosi_bitlen, dummy_bitlen, miso_bitlen );

  return 0;
}
