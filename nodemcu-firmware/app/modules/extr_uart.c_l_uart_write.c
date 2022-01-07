
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const u8 ;
typedef int lua_State ;


 scalar_t__ LUA_TNUMBER ;
 int LUA_TSTRING ;
 int MOD_CHECK_ID (int ,int) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 size_t lua_tointeger (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 scalar_t__ lua_type (int *,int) ;
 int platform_uart_send (int,char const) ;
 int uart ;

__attribute__((used)) static int l_uart_write( lua_State* L )
{
  int id;
  const char* buf;
  size_t len, i;
  int total = lua_gettop( L ), s;

  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( uart, id );
  for( s = 2; s <= total; s ++ )
  {
    if( lua_type( L, s ) == LUA_TNUMBER )
    {
      len = lua_tointeger( L, s );
      if( len > 255 )
        return luaL_error( L, "invalid number" );
      platform_uart_send( id, ( u8 )len );
    }
    else
    {
      luaL_checktype( L, s, LUA_TSTRING );
      buf = lua_tolstring( L, s, &len );
      for( i = 0; i < len; i ++ )
        platform_uart_send( id, buf[ i ] );
    }
  }
  return 0;
}
