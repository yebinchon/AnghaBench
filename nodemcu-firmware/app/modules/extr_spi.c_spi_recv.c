
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int MOD_CHECK_ID (int ,int) ;
 int luaL_addchar (int *,char) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_optinteger (int *,int,int) ;
 int luaL_pushresult (int *) ;
 scalar_t__ platform_spi_send_recv (int,int ,int) ;
 int spi ;
 int * spi_databits ;

__attribute__((used)) static int spi_recv( lua_State *L )
{
  int id = luaL_checkinteger( L, 1 );
  int size = luaL_checkinteger( L, 2 ), i;
  int def = luaL_optinteger( L, 3, 0xffffffff );

  luaL_Buffer b;

  MOD_CHECK_ID( spi, id );
  if (size == 0) {
    return 0;
  }

  luaL_buffinit( L, &b );
  for (i=0; i<size; i++)
  {
    luaL_addchar( &b, ( char )platform_spi_send_recv( id, spi_databits[id], def ) );
  }

  luaL_pushresult( &b );
  return 1;
}
