
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int luaL_Buffer ;
struct TYPE_4__ {scalar_t__ buffer_ref; int min_needed; int min_available; size_t buffer_len; scalar_t__ complete; scalar_t__ error; int jsn; void* buffer; int * L; } ;
typedef TYPE_1__ JSN_DATA ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int jsonsl_feed (int ,char const*,size_t) ;
 int luaL_addlstring (int *,char const*,size_t) ;
 int luaL_addvalue (int *) ;
 int luaL_buffinit (int *,int *) ;
 void* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*,...) ;
 int luaL_pushresult (int *) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 scalar_t__ lua_ref (int *,int) ;
 int sjson_decoder_result_int (int *,TYPE_1__*) ;
 int sjson_free_working_data (int *,TYPE_1__*) ;

__attribute__((used)) static int sjson_decoder_write_int(lua_State *L, int udata_pos, int string_pos) {
  JSN_DATA *data = (JSN_DATA *)luaL_checkudata(L, udata_pos, "sjson.decoder");
  size_t len;

  const char *str = luaL_checklstring(L, string_pos, &len);

  if (data->error) {
    luaL_error(L, "JSON parse error: previous call");
  }

  if (!data->complete) {
    data->L = L;


    if (data->buffer_ref != LUA_NOREF) {
      luaL_Buffer b;
      luaL_buffinit(L, &b);

      lua_rawgeti(L, LUA_REGISTRYINDEX, data->buffer_ref);
      size_t prev_len;
      const char *prev_buffer = luaL_checklstring(L, -1, &prev_len);
      lua_pop(L, 1);
      int discard = data->min_needed - data->min_available;
      prev_buffer += discard;
      prev_len -= discard;
      if (prev_len > 0) {
        luaL_addlstring(&b, prev_buffer, prev_len);
      }
      data->min_available += discard;

      luaL_unref(L, LUA_REGISTRYINDEX, data->buffer_ref);
      data->buffer_ref = LUA_NOREF;

      lua_pushvalue(L, string_pos);
      luaL_addvalue(&b);
      luaL_pushresult(&b);
    } else {
      lua_pushvalue(L, string_pos);
    }

    size_t blen;
    data->buffer = luaL_checklstring(L, -1, &blen);
    data->buffer_len = blen;
    data->buffer_ref = lua_ref(L, 1);

    jsonsl_feed(data->jsn, str, len);

    if (data->error) {
      luaL_error(L, "JSON parse error: %s", data->error);
    }
  }

  if (data->complete) {

    sjson_free_working_data(L, data);

    return sjson_decoder_result_int(L, data);
  }

  return 0;
}
