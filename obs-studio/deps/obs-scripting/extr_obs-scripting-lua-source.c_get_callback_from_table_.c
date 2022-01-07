
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REFNIL ;
 int LUA_REGISTRYINDEX ;
 int luaL_ref (int *,int ) ;
 int lua_gettable (int *,int) ;
 int lua_isfunction (int *,int) ;
 int lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int warn (char*,char const*,char const*) ;

__attribute__((used)) static inline void get_callback_from_table_(lua_State *script, int idx,
         const char *name, int *p_reg_idx,
         const char *func)
{
 *p_reg_idx = LUA_REFNIL;

 lua_pushstring(script, name);
 lua_gettable(script, idx - 1);
 if (!lua_isfunction(script, -1)) {
  if (!lua_isnil(script, -1)) {
   warn("%s: item '%s' is not a function", func, name);
  }
  lua_pop(script, 1);
 } else {
  *p_reg_idx = luaL_ref(script, LUA_REGISTRYINDEX);
 }
}
