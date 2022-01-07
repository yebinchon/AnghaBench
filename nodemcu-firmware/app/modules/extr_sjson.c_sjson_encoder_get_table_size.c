
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TNUMBER ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_tointeger (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int sjson_encoder_get_table_size(lua_State *L, int argno) {

  lua_pushvalue(L, argno);

  lua_pushnil(L);


  int maxkey = 0;

  while (lua_next(L, -2)) {
    lua_pop(L, 1);

    if (lua_type(L, -1) == LUA_TNUMBER) {
      int val = lua_tointeger(L, -1);
      if (val > maxkey) {
        maxkey = val;
      } else if (val <= 0) {
        maxkey = -1;
        lua_pop(L, 1);
        break;
      }
    } else {
      maxkey = -1;
      lua_pop(L, 1);
      break;
    }
  }

  lua_pop(L, 1);

  return maxkey;
}
