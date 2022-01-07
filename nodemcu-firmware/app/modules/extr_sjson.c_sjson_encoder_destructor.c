
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int nlevels; int current_str_ref; int null_ref; TYPE_1__* stack; } ;
struct TYPE_3__ {int lua_key_ref; int lua_object_ref; } ;
typedef TYPE_2__ ENC_DATA ;


 int DBG_PRINTF (char*) ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_unref (int *,int ,int ) ;

__attribute__((used)) static int sjson_encoder_destructor(lua_State *L) {
  ENC_DATA *data = (ENC_DATA *)luaL_checkudata(L, 1, "sjson.encoder");

  int i;

  for (i = 0; i < data->nlevels; i++) {
    luaL_unref(L, LUA_REGISTRYINDEX, data->stack[i].lua_object_ref);
    luaL_unref(L, LUA_REGISTRYINDEX, data->stack[i].lua_key_ref);
  }

  luaL_unref(L, LUA_REGISTRYINDEX, data->null_ref);
  luaL_unref(L, LUA_REGISTRYINDEX, data->current_str_ref);

  DBG_PRINTF("Destructor called\n");

  return 0;
}
