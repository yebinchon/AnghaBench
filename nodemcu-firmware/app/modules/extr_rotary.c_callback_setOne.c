
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TFUNCTION ;
 scalar_t__ LUA_TLIGHTFUNCTION ;
 int callback_free_one (int *,int*) ;
 int luaL_ref (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int callback_setOne(lua_State* L, int *cb_ptr, int arg_number)
{
  if (lua_type(L, arg_number) == LUA_TFUNCTION || lua_type(L, arg_number) == LUA_TLIGHTFUNCTION) {
    lua_pushvalue(L, arg_number);
    callback_free_one(L, cb_ptr);
    *cb_ptr = luaL_ref(L, LUA_REGISTRYINDEX);
    return 0;
  }

  return -1;
}
