
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct jsonsl_state_st {int level; int type; void* lua_object_ref; int pos_begin; int used_count; } ;
typedef TYPE_1__* jsonsl_t ;
typedef int jsonsl_action_t ;
struct TYPE_7__ {void* hkey_ref; void* pos_ref; void* metatable; int min_needed; int L; } ;
struct TYPE_6__ {TYPE_2__* data; } ;
typedef TYPE_2__ JSN_DATA ;


 int DBG_PRINTF (char*,...) ;





 void* LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int LUA_TNIL ;
 int create_table (TYPE_2__*) ;
 void* get_parent_object_ref () ;
 int get_parent_object_used_count_pre_inc () ;
 int get_state_buffer (TYPE_2__*,struct jsonsl_state_st*) ;
 int jsonsl_strtype (int) ;
 int luaL_error (int ,char*) ;
 int lua_call (int ,int,int) ;
 int lua_getfield (int ,int,char*) ;
 int lua_pop (int ,int) ;
 int lua_pushnumber (int ,int ) ;
 int lua_pushvalue (int ,int) ;
 int lua_rawgeti (int ,int ,void*) ;
 void* lua_ref (int ,int) ;
 int lua_settable (int ,int) ;
 int lua_toboolean (int ,int) ;
 int lua_type (int ,int) ;
 int lua_unref (int ,void*) ;

__attribute__((used)) static void
create_new_element(jsonsl_t jsn,
                   jsonsl_action_t action,
                   struct jsonsl_state_st *state,
                   const char *buf)
{
  JSN_DATA *data = jsn->data;

  DBG_PRINTF("L%d: new action %d @ %d state->type %s\n", state->level, action, state->pos_begin, jsonsl_strtype(state->type));
  DBG_PRINTF("buf: '%s' ('%.10s')\n", buf, get_state_buffer(data, state));

  state->lua_object_ref = LUA_NOREF;

  switch(state->type) {
    case 129:
    case 128:
    case 132:
      break;

    case 131:
    case 130:
      create_table(data);
      state->lua_object_ref = lua_ref(data->L, 1);
      state->used_count = 0;

      lua_rawgeti(data->L, LUA_REGISTRYINDEX, get_parent_object_ref());
      if (data->hkey_ref == LUA_NOREF) {

        lua_pushnumber(data->L, get_parent_object_used_count_pre_inc());
        DBG_PRINTF("Adding array element\n");
      } else {

        lua_rawgeti(data->L, LUA_REGISTRYINDEX, data->hkey_ref);
        lua_unref(data->L, data->hkey_ref);
        data->hkey_ref = LUA_NOREF;
        DBG_PRINTF("Adding hash element\n");
      }
      if (data->pos_ref != LUA_NOREF && state->level > 1) {
        lua_rawgeti(data->L, LUA_REGISTRYINDEX, data->pos_ref);
        lua_pushnumber(data->L, state->level - 1);
        lua_pushvalue(data->L, -3);
        lua_settable(data->L, -3);
        lua_pop(data->L, 1);
      }




      int want_value = 1;

      if (data->pos_ref != LUA_NOREF) {
        lua_rawgeti(data->L, LUA_REGISTRYINDEX, data->metatable);
        lua_getfield(data->L, -1, "checkpath");
        if (lua_type(data->L, -1) != LUA_TNIL) {

          lua_rawgeti(data->L, LUA_REGISTRYINDEX, state->lua_object_ref);
          lua_rawgeti(data->L, LUA_REGISTRYINDEX, data->pos_ref);
          lua_call(data->L, 2, 1);
          want_value = lua_toboolean(data->L, -1);
        }
        lua_pop(data->L, 2);
      }

      if (want_value) {
        lua_rawgeti(data->L, LUA_REGISTRYINDEX, state->lua_object_ref);
        lua_settable(data->L, -3);
        lua_pop(data->L, 1);
      } else {
        lua_pop(data->L, 2);
      }

      break;

    default:
        DBG_PRINTF("Unhandled type %c\n", state->type);
        luaL_error(data->L, "Unhandled type");
        break;
    }

    data->min_needed = state->pos_begin;
}
