
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int switec ;
 scalar_t__ switec_reset (unsigned int) ;

__attribute__((used)) static int lswitec_reset( lua_State* L )
{
  unsigned int id;
  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( switec, id );
  if (switec_reset( id )) {
    return luaL_error( L, "Unable to reset stepper." );
  }
  return 0;
}
