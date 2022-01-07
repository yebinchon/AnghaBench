
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_lua_script {int base; } ;
typedef int lua_State ;


 int LUA_REFNIL ;
 int LUA_REGISTRYINDEX ;
 struct obs_lua_script* current_lua_script ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_pcall (int *,int,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int ,int) ;
 int lua_tostring (int *,int) ;
 int script_warn (int *,char*,char const*,char const*,int ) ;

__attribute__((used)) static inline bool call_func_(lua_State *script, int reg_idx, int args,
         int rets, const char *func,
         const char *display_name)
{
 if (reg_idx == LUA_REFNIL)
  return 0;

 struct obs_lua_script *data = current_lua_script;

 lua_rawgeti(script, LUA_REGISTRYINDEX, reg_idx);
 lua_insert(script, -1 - args);

 if (lua_pcall(script, args, rets, 0) != 0) {
  script_warn(&data->base, "Failed to call %s for %s: %s", func,
       display_name, lua_tostring(script, -1));
  lua_pop(script, 1);
  return 0;
 }

 return 1;
}
