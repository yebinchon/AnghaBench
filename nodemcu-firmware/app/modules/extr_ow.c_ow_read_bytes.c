
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u32 ;
typedef int lua_State ;
typedef int luaL_Buffer ;


 scalar_t__ LUAL_BUFFERSIZE ;
 int MOD_CHECK_ID (int ,unsigned int) ;
 int luaL_addsize (int *,scalar_t__) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_buffinit (int *,int *) ;
 unsigned int luaL_checkinteger (int *,int) ;
 char* luaL_prepbuffer (int *) ;
 int luaL_pushresult (int *) ;
 int onewire_read_bytes (unsigned int,int *,scalar_t__) ;
 int ow ;

__attribute__((used)) static int ow_read_bytes( lua_State *L )
{
  unsigned id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( ow, id );
  u32 size = ( u32 )luaL_checkinteger( L, 2 );
  if( size == 0 )
    return 0;

  luaL_argcheck(L, size <= LUAL_BUFFERSIZE, 2, "Attempt to read too many characters");

  luaL_Buffer b;
  luaL_buffinit( L, &b );
  char *p = luaL_prepbuffer(&b);

  onewire_read_bytes(id, (uint8_t *)p, size);

  luaL_addsize(&b, size);
  luaL_pushresult( &b );
  return 1;
}
