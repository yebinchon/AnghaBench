
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct python_obs_timer {struct python_obs_timer* next; struct python_obs_timer** p_prev_next; } ;



__attribute__((used)) static inline void python_obs_timer_remove(struct python_obs_timer *timer)
{
 struct python_obs_timer *next = timer->next;
 if (next)
  next->p_prev_next = timer->p_prev_next;
 *timer->p_prev_next = timer->next;
}
