
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int result_ref; int complete; } ;
typedef TYPE_1__ JSN_DATA ;


 int LUA_REGISTRYINDEX ;
 int luaL_error (int *,char*) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_remove (int *,int) ;

__attribute__((used)) static int sjson_decoder_result_int(lua_State *L, JSN_DATA *data) {
  if (!data->complete) {
    luaL_error(L, "decode not complete");
  }

  lua_rawgeti(L, LUA_REGISTRYINDEX, data->result_ref);
  lua_rawgeti(L, -1, 1);
  lua_remove(L, -2);

  return 1;
}
