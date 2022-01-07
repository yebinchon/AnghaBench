
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 int callback_free (int *,unsigned int) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int switec ;
 scalar_t__ switec_close (unsigned int) ;

__attribute__((used)) static int lswitec_close( lua_State* L )
{
  unsigned int id;

  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( switec, id );
  callback_free(L, id);
  if (switec_close( id )) {
    return luaL_error( L, "Unable to close stepper." );
  }
  return 0;
}
