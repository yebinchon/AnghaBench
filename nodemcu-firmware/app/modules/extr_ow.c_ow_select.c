
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 unsigned int luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_istable (int *,int) ;
 size_t lua_objlen (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 int onewire_select (unsigned int,char*) ;
 int ow ;

__attribute__((used)) static int ow_select( lua_State *L )
{
  uint8_t rom[8];
  size_t datalen;
  int numdata, i;
  unsigned id = luaL_checkinteger( L, 1 );
  const char *pdata;
  MOD_CHECK_ID( ow, id );

  if( lua_istable( L, 2 ) )
  {
    datalen = lua_objlen( L, 2 );
    if (datalen!=8)
      return luaL_error( L, "wrong arg range" );
    for( i = 0; i < datalen; i ++ )
    {
      lua_rawgeti( L, 2, i + 1 );
      numdata = ( int )luaL_checkinteger( L, -1 );
      lua_pop( L, 1 );
      if( numdata > 255 )
        return luaL_error( L, "wrong arg range" );
      rom[i] = (uint8_t)numdata;
    }
  }
  else
  {
    pdata = luaL_checklstring( L, 2, &datalen );
    if (datalen!=8)
      return luaL_error( L, "wrong arg range" );
    for( i = 0; i < datalen; i ++ ){
      rom[i] = pdata[i];
    }
  }

  onewire_select(id, rom);
  return 0;
}
