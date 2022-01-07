
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int int32_t ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_pushnumber (int *,int ) ;
 int switec ;
 scalar_t__ switec_getpos (unsigned int,int *,int *,int *) ;

__attribute__((used)) static int lswitec_getpos( lua_State* L )
{
  unsigned int id;

  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( switec, id );
  int32_t pos;
  int32_t dir;
  int32_t target;
  if (switec_getpos( id, &pos, &dir, &target )) {
    return luaL_error( L, "Unable to get position." );
  }
  lua_pushnumber(L, pos);
  lua_pushnumber(L, dir);
  return 2;
}
