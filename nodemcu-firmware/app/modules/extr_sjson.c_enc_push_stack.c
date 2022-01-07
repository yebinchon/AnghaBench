
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {scalar_t__ level; scalar_t__ nlevels; TYPE_1__* stack; } ;
struct TYPE_4__ {scalar_t__ offset; int size; int lua_object_ref; } ;
typedef TYPE_1__ ENC_DATA_STATE ;
typedef TYPE_2__ ENC_DATA ;


 int luaL_error (int *,char*) ;
 int lua_pushvalue (int *,int) ;
 int lua_ref (int *,int) ;
 int sjson_encoder_get_table_size (int *,int) ;

__attribute__((used)) static void enc_push_stack(lua_State *L, ENC_DATA *data, int argno) {
  if (++data->level >= data->nlevels) {
    luaL_error(L, "encoder stack overflow");
  }
  lua_pushvalue(L, argno);
  ENC_DATA_STATE *state = &data->stack[data->level];
  state->lua_object_ref = lua_ref(L, 1);
  state->size = sjson_encoder_get_table_size(L, argno);
  state->offset = 0;
}
