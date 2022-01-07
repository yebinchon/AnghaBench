
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TFUNCTION ;
 scalar_t__ LUA_TLIGHTFUNCTION ;
 scalar_t__ LUA_TTABLE ;
 int lua_call (int *,int ,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int sjson_encoder_next_value_is_table(lua_State *L) {
  int count = 10;

  while ((lua_type(L, -1) == LUA_TFUNCTION



    ) && count-- > 0) {

    lua_call(L, 0, 1);
  }

  return (lua_type(L, -1) == LUA_TTABLE);
}
