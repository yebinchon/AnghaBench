
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int result_ref; int * jsn; } ;
typedef TYPE_1__ JSN_DATA ;


 int DBG_PRINTF (char*) ;
 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_unref (int *,int ,int ) ;
 int sjson_free_working_data (int *,TYPE_1__*) ;

__attribute__((used)) static int sjson_decoder_destructor(lua_State *L) {
  JSN_DATA *data = (JSN_DATA *)luaL_checkudata(L, 1, "sjson.decoder");

  sjson_free_working_data(L, data);

  data->jsn = ((void*)0);

  luaL_unref(L, LUA_REGISTRYINDEX, data->result_ref);
  data->result_ref = LUA_NOREF;

  DBG_PRINTF("Destructor called\n");

  return 0;
}
