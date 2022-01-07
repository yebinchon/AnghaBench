
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lua_obs_callback {int base; } ;


 int just_free_script_callback (int *) ;

__attribute__((used)) static inline void just_free_lua_obs_callback(struct lua_obs_callback *cb)
{
 just_free_script_callback(&cb->base);
}
