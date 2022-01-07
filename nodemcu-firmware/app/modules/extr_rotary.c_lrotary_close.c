
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int DATA ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 int ROTARY_ALL ;
 int callback_free (int *,unsigned int,int ) ;
 int ** data ;
 int free (int *) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int rotary ;
 scalar_t__ rotary_close (unsigned int) ;

__attribute__((used)) static int lrotary_close( lua_State* L )
{
  unsigned int id;

  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( rotary, id );
  callback_free(L, id, ROTARY_ALL);

  DATA *d = data[id];
  if (d) {
    data[id] = ((void*)0);
    free(d);
  }

  if (rotary_close( id )) {
    return luaL_error( L, "Unable to close switch." );
  }
  return 0;
}
