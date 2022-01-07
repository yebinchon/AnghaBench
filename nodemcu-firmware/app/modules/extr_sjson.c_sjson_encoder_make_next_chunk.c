
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_12__ {int lvl; } ;
typedef TYPE_1__ luaL_Buffer ;
struct TYPE_14__ {size_t level; scalar_t__ offset; void* current_str_ref; TYPE_2__* stack; } ;
struct TYPE_13__ {scalar_t__ size; int offset; int lua_object_ref; int lua_key_ref; } ;
typedef TYPE_2__ ENC_DATA_STATE ;
typedef TYPE_3__ ENC_DATA ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int enc_pop_stack (int *,TYPE_3__*) ;
 int enc_push_stack (int *,TYPE_3__*,int) ;
 int encode_lua_object (int *,TYPE_3__*,int,char*,char*) ;
 int luaL_addchar (TYPE_1__*,char) ;
 int luaL_addvalue (TYPE_1__*) ;
 int luaL_buffinit (int *,TYPE_1__*) ;
 int luaL_pushresult (TYPE_1__*) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 void* lua_ref (int *,int) ;
 int lua_remove (int *,int) ;
 int lua_tostring (int *,int) ;
 int lua_unref (int *,int) ;
 scalar_t__ sjson_encoder_next_value_is_table (int *) ;

__attribute__((used)) static void sjson_encoder_make_next_chunk(lua_State *L, ENC_DATA *data) {
  if (data->level < 0) {
    return;
  }

  luaL_Buffer b;
  luaL_buffinit(L, &b);


  while (data->level >= 0 && !b.lvl) {
    ENC_DATA_STATE *state = &data->stack[data->level];

    int finished = 0;

    if (state->size >= 0) {
      if (state->offset == 0) {

        luaL_addchar(&b, '[');
      }
      if (state->offset == state->size << 1) {
        luaL_addchar(&b, ']');
        finished = 1;
      } else if ((state->offset & 1) == 0) {
        if (state->offset > 0) {
          luaL_addchar(&b, ',');
        }
      } else {

        lua_rawgeti(L, LUA_REGISTRYINDEX, state->lua_object_ref);
        lua_rawgeti(L, -1, (state->offset >> 1) + 1);
        if (sjson_encoder_next_value_is_table(L)) {
          enc_push_stack(L, data, -1);
          lua_pop(L, 2);
          state->offset++;
          continue;
        }
        encode_lua_object(L, data, -1, "", "");
        lua_remove(L, -2);
        lua_remove(L, -2);
        luaL_addvalue(&b);
      }

      state->offset++;
    } else {
      lua_rawgeti(L, LUA_REGISTRYINDEX, state->lua_object_ref);

      lua_rawgeti(L, LUA_REGISTRYINDEX, state->lua_key_ref);


      if (lua_next(L, -2)) {

        if (state->offset & 1) {
          lua_unref(L, state->lua_key_ref);
          state->lua_key_ref = LUA_NOREF;

          lua_pushvalue(L, -2);
          state->lua_key_ref = lua_ref(L, 1);
        }

        if ((state->offset & 1) == 0) {

          lua_pushvalue(L, -2);


          lua_tostring(L, -1);
          encode_lua_object(L, data, -1, state->offset ? "," : "{", ":");
          lua_remove(L, -2);
          lua_remove(L, -2);
          lua_remove(L, -2);
          lua_remove(L, -2);
        } else {
          if (sjson_encoder_next_value_is_table(L)) {
            enc_push_stack(L, data, -1);
            lua_pop(L, 3);
            state->offset++;
            continue;
          }
          encode_lua_object(L, data, -1, "", "");
          lua_remove(L, -2);
          lua_remove(L, -2);
          lua_remove(L, -2);
        }
        luaL_addvalue(&b);
      } else {
        lua_pop(L, 1);

        luaL_addchar(&b, '}');
        finished = 1;
      }

      state->offset++;
    }

    if (finished) {
      enc_pop_stack(L, data);
    }
  }
  luaL_pushresult(&b);
  data->current_str_ref = lua_ref(L, 1);
  data->offset = 0;
}
