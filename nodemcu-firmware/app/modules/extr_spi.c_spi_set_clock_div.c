
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,int) ;
 void* luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,void*) ;
 int spi ;
 void* spi_set_clkdiv (int,void*) ;

__attribute__((used)) static int spi_set_clock_div( lua_State *L )
{
  int id = luaL_checkinteger( L, 1 );

  MOD_CHECK_ID( spi, id );

  u32 clk_div = luaL_checkinteger( L, 2 );

  u32 old_div = spi_set_clkdiv(id, clk_div);

  lua_pushinteger( L, old_div );

  return 1;
}
