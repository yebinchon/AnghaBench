
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int nlevels; int level; void* null_ref; TYPE_1__* stack; void* current_str_ref; } ;
struct TYPE_4__ {void* lua_key_ref; void* lua_object_ref; } ;
typedef TYPE_1__ ENC_DATA_STATE ;
typedef TYPE_2__ ENC_DATA ;


 int DEFAULT_DEPTH ;
 void* LUA_NOREF ;
 void* LUA_REFNIL ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TTABLE ;
 int enc_push_stack (int *,TYPE_2__*,int) ;
 int luaL_checktype (int *,int ,scalar_t__) ;
 int luaL_getmetatable (int *,char*) ;
 int luaL_unref (int *,int ,void*) ;
 int lua_getfield (int *,int,char*) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 void* lua_ref (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int lua_tointeger (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int sjson_encoder(lua_State *L) {
  int nlevels = DEFAULT_DEPTH;
  int argno = 1;


  luaL_checktype(L, argno++, LUA_TTABLE);

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

  ENC_DATA *data = (ENC_DATA *) lua_newuserdata(L, sizeof(ENC_DATA) + nlevels * sizeof(ENC_DATA_STATE));


  luaL_getmetatable(L, "sjson.encoder");
  lua_setmetatable(L, -2);

  data->nlevels = nlevels;
  data->level = -1;
  data->stack = (ENC_DATA_STATE *) (data + 1);
  data->current_str_ref = LUA_NOREF;
  int i;
  for (i = 0; i < nlevels; i++) {
    data->stack[i].lua_object_ref = LUA_NOREF;
    data->stack[i].lua_key_ref = LUA_REFNIL;
  }
  enc_push_stack(L, data, 1);

  data->null_ref = LUA_REFNIL;

  if (lua_type(L, argno) == LUA_TTABLE) {
    luaL_unref(L, LUA_REGISTRYINDEX, data->null_ref);
    data->null_ref = LUA_NOREF;
    lua_getfield(L, argno, "null");
    data->null_ref = lua_ref(L, 1);
  }

  return 1;
}
