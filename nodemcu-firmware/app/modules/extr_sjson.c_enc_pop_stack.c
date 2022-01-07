
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {size_t level; TYPE_1__* stack; } ;
struct TYPE_4__ {int lua_key_ref; int lua_object_ref; } ;
typedef TYPE_1__ ENC_DATA_STATE ;
typedef TYPE_2__ ENC_DATA ;


 int LUA_NOREF ;
 int LUA_REFNIL ;
 int luaL_error (int *,char*) ;
 int lua_unref (int *,int ) ;

__attribute__((used)) static void enc_pop_stack(lua_State *L, ENC_DATA *data) {
  if (data->level < 0) {
    luaL_error(L, "encoder stack underflow");
  }
  ENC_DATA_STATE *state = &data->stack[data->level];

  lua_unref(L, state->lua_object_ref);
  state->lua_object_ref = LUA_NOREF;
  lua_unref(L, state->lua_key_ref);
  state->lua_key_ref = LUA_REFNIL;
  data->level--;
}
