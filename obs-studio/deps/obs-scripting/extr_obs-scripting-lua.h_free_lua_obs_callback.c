
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lua_obs_callback {int base; } ;


 int free_script_callback (int *) ;

__attribute__((used)) static inline void free_lua_obs_callback(struct lua_obs_callback *cb)
{
 free_script_callback(&cb->base);
}
