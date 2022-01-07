
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct jsonsl_state_st {int level; int type; int special_flags; void* lua_object_ref; scalar_t__ pos_begin; scalar_t__ pos_cur; } ;
typedef TYPE_1__* jsonsl_t ;
typedef int jsonsl_action_t ;
struct TYPE_8__ {void* hkey_ref; void* null_ref; void* pos_ref; int complete; int L; } ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef TYPE_2__ JSN_DATA ;


 int DBG_PRINTF (char*,...) ;
 int JSONSL_SPECIALf_FALSE ;
 int JSONSL_SPECIALf_NULL ;
 int JSONSL_SPECIALf_NUMERIC ;
 int JSONSL_SPECIALf_TRUE ;





 void* LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 void* get_parent_object_ref () ;
 int get_parent_object_used_count_pre_inc () ;
 int get_state_buffer (TYPE_2__*,struct jsonsl_state_st*) ;
 int jsonsl_strtype (int) ;
 int lua_pop (int ,int) ;
 int lua_pushboolean (int ,int) ;
 int lua_pushnil (int ) ;
 int lua_pushnumber (int ,int) ;
 int lua_pushvalue (int ,int) ;
 int lua_rawgeti (int ,int ,void*) ;
 void* lua_ref (int ,int) ;
 int lua_remove (int ,int) ;
 int lua_settable (int ,int) ;
 int lua_unref (int ,void*) ;
 int push_number (TYPE_2__*,struct jsonsl_state_st*) ;
 int push_string (TYPE_2__*,struct jsonsl_state_st*) ;

__attribute__((used)) static void
cleanup_closing_element(jsonsl_t jsn,
                        jsonsl_action_t action,
                        struct jsonsl_state_st *state,
                        const char *at)
{
  JSN_DATA *data = (JSN_DATA *) jsn->data;
  DBG_PRINTF( "L%d: cc action %d state->type %s\n", state->level, action, jsonsl_strtype(state->type));
  DBG_PRINTF( "buf (%d - %d): '%.*s'\n", state->pos_begin, state->pos_cur, state->pos_cur - state->pos_begin, get_state_buffer(data, state));
  DBG_PRINTF( "at: '%s'\n", at);

 switch (state->type) {
   case 132:
      push_string(data, state);
      data->hkey_ref = lua_ref(data->L, 1);
      break;

   case 128:
      lua_rawgeti(data->L, LUA_REGISTRYINDEX, get_parent_object_ref());
      if (data->hkey_ref == LUA_NOREF) {

        lua_pushnumber(data->L, get_parent_object_used_count_pre_inc());
      } else {

        lua_rawgeti(data->L, LUA_REGISTRYINDEX, data->hkey_ref);
        lua_unref(data->L, data->hkey_ref);
        data->hkey_ref = LUA_NOREF;
      }
      push_string(data, state);
      lua_settable(data->L, -3);
      lua_pop(data->L, 1);
      break;

   case 129:
      DBG_PRINTF("Special flags = 0x%x\n", state->special_flags);


      if (state->special_flags & (JSONSL_SPECIALf_TRUE|JSONSL_SPECIALf_FALSE|JSONSL_SPECIALf_NUMERIC|JSONSL_SPECIALf_NULL)) {
        if (state->special_flags & JSONSL_SPECIALf_TRUE) {
          lua_pushboolean(data->L, 1);
        } else if (state->special_flags & JSONSL_SPECIALf_FALSE) {
          lua_pushboolean(data->L, 0);
        } else if (state->special_flags & JSONSL_SPECIALf_NULL) {
          DBG_PRINTF("Outputting null\n");
          lua_rawgeti(data->L, LUA_REGISTRYINDEX, data->null_ref);
        } else if (state->special_flags & JSONSL_SPECIALf_NUMERIC) {
          push_number(data, state);
        }

        lua_rawgeti(data->L, LUA_REGISTRYINDEX, get_parent_object_ref());
        if (data->hkey_ref == LUA_NOREF) {

          lua_pushnumber(data->L, get_parent_object_used_count_pre_inc());
        } else {

          lua_rawgeti(data->L, LUA_REGISTRYINDEX, data->hkey_ref);
          lua_unref(data->L, data->hkey_ref);
          data->hkey_ref = LUA_NOREF;
        }
        lua_pushvalue(data->L, -3);
        lua_remove(data->L, -4);
        lua_settable(data->L, -3);
        lua_pop(data->L, 1);
      }
      break;
   case 130:
   case 131:
      lua_unref(data->L, state->lua_object_ref);
      state->lua_object_ref = LUA_NOREF;
      if (data->pos_ref != LUA_NOREF) {
        lua_rawgeti(data->L, LUA_REGISTRYINDEX, data->pos_ref);
        lua_pushnumber(data->L, state->level);
        lua_pushnil(data->L);
        lua_settable(data->L, -3);
        lua_pop(data->L, 1);
      }
      if (state->level == 1) {
        data->complete = 1;
      }
      break;
 }
}
