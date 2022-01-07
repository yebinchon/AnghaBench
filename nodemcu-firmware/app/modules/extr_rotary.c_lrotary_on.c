
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 int callback_free (int *,unsigned int,int) ;
 scalar_t__ callback_set (int *,unsigned int,int,int) ;
 void* luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int rotary ;

__attribute__((used)) static int lrotary_on( lua_State* L )
{
  unsigned int id;
  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( rotary, id );

  int mask = luaL_checkinteger(L, 2);

  if (lua_gettop(L) >= 3) {
    if (callback_set(L, id, mask, 3)) {
      return luaL_error( L, "Unable to set callback." );
    }
  } else {
    callback_free(L, id, mask);
  }

  return 0;
}
