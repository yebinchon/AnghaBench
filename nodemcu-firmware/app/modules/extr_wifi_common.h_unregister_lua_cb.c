
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int luaL_unref (int *,int ,int) ;

__attribute__((used)) static inline void unregister_lua_cb(lua_State* L, int* cb_ref){
  if(*cb_ref != LUA_NOREF){
    luaL_unref(L, LUA_REGISTRYINDEX, *cb_ref);
   *cb_ref = LUA_NOREF;
  }
}
