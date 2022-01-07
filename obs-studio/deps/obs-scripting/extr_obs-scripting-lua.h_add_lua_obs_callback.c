
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lua_obs_callback {int dummy; } ;
typedef int lua_State ;


 struct lua_obs_callback* add_lua_obs_callback_extra (int *,int,int ) ;

__attribute__((used)) static inline struct lua_obs_callback *add_lua_obs_callback(lua_State *script,
           int stack_idx)
{
 return add_lua_obs_callback_extra(script, stack_idx, 0);
}
