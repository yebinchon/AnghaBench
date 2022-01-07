
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int luaL_Buffer ;
struct TYPE_4__ {scalar_t__ current_str_ref; int offset; } ;
typedef TYPE_1__ ENC_DATA ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int luaL_addlstring (int *,char const*,int) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_pushresult (int *) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_unref (int *,scalar_t__) ;
 int sjson_encoder_make_next_chunk (int *,TYPE_1__*) ;

__attribute__((used)) static int sjson_encoder_read_int(lua_State *L, ENC_DATA *data, int readsize) {
  luaL_Buffer b;
  luaL_buffinit(L, &b);

  size_t len;

  do {

    if (data->current_str_ref != LUA_NOREF) {

      lua_rawgeti(L, LUA_REGISTRYINDEX, data->current_str_ref);
      const char *str = lua_tolstring(L, -1, &len);

      lua_pop(L, 1);

      int amnt = len - data->offset;;
      if (amnt > readsize) {
        amnt = readsize;
      }
      luaL_addlstring(&b, str + data->offset, amnt);
      data->offset += amnt;
      readsize -= amnt;

      if (data->offset == len) {
        lua_unref(L, data->current_str_ref);
        data->current_str_ref = LUA_NOREF;
      }
    }

    if (readsize > 0) {

      sjson_encoder_make_next_chunk(L, data);
    }

  } while (readsize > 0 && data->current_str_ref != LUA_NOREF);

  luaL_pushresult(&b);

  lua_tolstring(L, -1, &len);

  if (len == 0) {

    lua_pop(L, 1);
    return 0;
  }

  return 1;
}
