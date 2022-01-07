
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lua_obs_timer {int dummy; } ;
struct lua_obs_callback {int dummy; } ;


 struct lua_obs_timer* lua_obs_callback_extra_data (struct lua_obs_callback*) ;
 int lua_obs_timer_init (struct lua_obs_timer*) ;

__attribute__((used)) static void defer_timer_init(void *p_cb)
{
 struct lua_obs_callback *cb = p_cb;
 struct lua_obs_timer *timer = lua_obs_callback_extra_data(cb);
 lua_obs_timer_init(timer);
}
