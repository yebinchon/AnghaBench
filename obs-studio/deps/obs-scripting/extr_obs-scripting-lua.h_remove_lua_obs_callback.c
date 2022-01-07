
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lua_obs_callback {int reg_idx; int script; int base; } ;


 int LUA_REGISTRYINDEX ;
 int luaL_unref (int ,int ,int ) ;
 int remove_script_callback (int *) ;

__attribute__((used)) static inline void remove_lua_obs_callback(struct lua_obs_callback *cb)
{
 remove_script_callback(&cb->base);
 luaL_unref(cb->script, LUA_REGISTRYINDEX, cb->reg_idx);
}
