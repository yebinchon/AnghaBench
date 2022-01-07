
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lua_obs_timer {struct lua_obs_timer* next; struct lua_obs_timer** p_prev_next; } ;



__attribute__((used)) static inline void lua_obs_timer_remove(struct lua_obs_timer *timer)
{
 struct lua_obs_timer *next = timer->next;
 if (next)
  next->p_prev_next = timer->p_prev_next;
 *timer->p_prev_next = timer->next;
}
