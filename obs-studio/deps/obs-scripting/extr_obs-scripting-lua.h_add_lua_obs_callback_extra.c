
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_lua_script {int first_callback; } ;
struct lua_obs_callback {int * script; int reg_idx; } ;
typedef int obs_script_t ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 struct lua_obs_callback* add_script_callback (int *,int *,int) ;
 struct obs_lua_script* current_lua_script ;
 int luaL_ref (int *,int ) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static inline struct lua_obs_callback *
add_lua_obs_callback_extra(lua_State *script, int stack_idx, size_t extra_size)
{
 struct obs_lua_script *data = current_lua_script;
 struct lua_obs_callback *cb =
  add_script_callback(&data->first_callback, (obs_script_t *)data,
        sizeof(*cb) + extra_size);

 lua_pushvalue(script, stack_idx);
 cb->reg_idx = luaL_ref(script, LUA_REGISTRYINDEX);
 cb->script = script;
 return cb;
}
