
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MASK (int ) ;
 int MOD_CHECK_ID (int ,unsigned int) ;
 int PRESS ;
 int RELEASE ;
 unsigned int luaL_checkinteger (int *,int) ;
 int lua_pushnumber (int *,int) ;
 int rotary ;
 int rotary_getpos (unsigned int) ;

__attribute__((used)) static int lrotary_getpos( lua_State* L )
{
  unsigned int id;
  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( rotary, id );

  int pos = rotary_getpos(id);

  if (pos == -1) {
    return 0;
  }

  lua_pushnumber(L, (pos << 1) >> 1);
  lua_pushnumber(L, (pos & 0x80000000) ? MASK(PRESS) : MASK(RELEASE));

  return 2;
}
