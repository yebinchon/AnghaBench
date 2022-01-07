
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lua_obs_timer {int dummy; } ;
struct lua_obs_callback {int dummy; } ;



__attribute__((used)) static inline struct lua_obs_callback *
lua_obs_timer_cb(struct lua_obs_timer *timer)
{
 return &((struct lua_obs_callback *)timer)[-1];
}
