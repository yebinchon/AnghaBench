
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ metatable; int L; } ;
typedef TYPE_1__ JSN_DATA ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int lua_newtable (int ) ;
 int lua_rawgeti (int ,int ,scalar_t__) ;
 int lua_setmetatable (int ,int) ;

__attribute__((used)) static void
create_table(JSN_DATA *data) {
  lua_newtable(data->L);
  if (data->metatable != LUA_NOREF) {
    lua_rawgeti(data->L, LUA_REGISTRYINDEX, data->metatable);
    lua_setmetatable(data->L, -2);
  }
}
