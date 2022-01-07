
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lua_State ;
typedef TYPE_2__* jsonsl_t ;
struct TYPE_9__ {TYPE_2__* jsn; void* pos_ref; void* metatable; void* null_ref; void* result_ref; int min_available; int min_needed; scalar_t__ buffer_len; int * L; int * error; scalar_t__ complete; void* buffer_ref; void* hkey_ref; } ;
struct TYPE_8__ {int levels_max; int max_callback_level; TYPE_3__* data; int error_callback; int action_callback_POP; int action_callback_PUSH; int * action_callback; int pos; TYPE_1__* stack; } ;
struct TYPE_7__ {void* lua_object_ref; } ;
typedef TYPE_3__ JSN_DATA ;


 int DEFAULT_DEPTH ;
 void* LUA_NOREF ;
 void* LUA_REFNIL ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TNIL ;
 scalar_t__ LUA_TTABLE ;
 int cleanup_closing_element ;
 int create_new_element ;
 int error_callback ;
 int jsonsl_enable_all_callbacks (TYPE_2__*) ;
 scalar_t__ jsonsl_get_size (int) ;
 TYPE_2__* jsonsl_init (TYPE_2__*,int) ;
 int luaL_getmetatable (int *,char*) ;
 void* luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,void*) ;
 int lua_getfield (int *,int,char*) ;
 int lua_newtable (int *) ;
 scalar_t__ lua_newuserdata (int *,scalar_t__) ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 void* lua_ref (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int lua_tointeger (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int sjson_decoder_int(lua_State *L, int argno) {
  int nlevels = DEFAULT_DEPTH;

  if (lua_type(L, argno) == LUA_TTABLE) {
    lua_getfield(L, argno, "depth");
    nlevels = lua_tointeger(L, argno);
    if (nlevels == 0) {
      nlevels = DEFAULT_DEPTH;
    }
    if (nlevels < 4) {
      nlevels = 4;
    }
    if (nlevels > 1000) {
      nlevels = 1000;
    }
    lua_pop(L, 1);
  }

  JSN_DATA *data = (JSN_DATA *) lua_newuserdata(L, sizeof(JSN_DATA) + jsonsl_get_size(nlevels));


  luaL_getmetatable(L, "sjson.decoder");
  lua_setmetatable(L, -2);

  jsonsl_t jsn = jsonsl_init((jsonsl_t) (data + 1), nlevels);
  int i;

  for (i = 0; i < jsn->levels_max; i++) {
    jsn->stack[i].lua_object_ref = LUA_NOREF;
  }
  data->jsn = jsn;
  data->result_ref = LUA_NOREF;

  data->null_ref = LUA_REFNIL;
  data->metatable = LUA_NOREF;
  data->hkey_ref = LUA_NOREF;
  data->pos_ref = LUA_NOREF;
  data->buffer_ref = LUA_NOREF;
  data->complete = 0;
  data->error = ((void*)0);
  data->L = L;
  data->buffer_len = 0;

  data->min_needed = data->min_available = jsn->pos;

  lua_pushlightuserdata(L, 0);
  data->null_ref = lua_ref(L, 1);


  lua_newtable(L);
  data->result_ref = luaL_ref(L, LUA_REGISTRYINDEX);

  if (lua_type(L, argno) == LUA_TTABLE) {
    luaL_unref(L, LUA_REGISTRYINDEX, data->null_ref);
    data->null_ref = LUA_NOREF;
    lua_getfield(L, argno, "null");
    data->null_ref = lua_ref(L, 1);

    lua_getfield(L, argno, "metatable");
    lua_pushvalue(L, -1);
    data->metatable = lua_ref(L, 1);

    if (lua_type(L, -1) != LUA_TNIL) {
      lua_getfield(L, -1, "checkpath");
      if (lua_type(L, -1) != LUA_TNIL) {
        lua_newtable(L);
        data->pos_ref = lua_ref(L, 1);
      }
      lua_pop(L, 1);
    }
    lua_pop(L, 1);
  }

  jsonsl_enable_all_callbacks(data->jsn);

  jsn->action_callback = ((void*)0);
  jsn->action_callback_PUSH = create_new_element;
  jsn->action_callback_POP = cleanup_closing_element;
  jsn->error_callback = error_callback;
  jsn->data = data;
  jsn->max_callback_level = nlevels;

  return 1;
}
