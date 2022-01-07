
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 int callback_free (int *,unsigned int) ;
 int callback_set (int *,unsigned int,int) ;
 void* luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int switec ;
 scalar_t__ switec_moveto (unsigned int,int) ;

__attribute__((used)) static int lswitec_moveto( lua_State* L )
{
  unsigned int id;

  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( switec, id );
  int pos;
  pos = luaL_checkinteger( L, 2 );

  if (lua_gettop(L) >= 3) {
    callback_set(L, id, 3);
  } else {
    callback_free(L, id);
  }

  if (switec_moveto( id, pos )) {
    return luaL_error( L, "Unable to move stepper." );
  }
  return 0;
}
