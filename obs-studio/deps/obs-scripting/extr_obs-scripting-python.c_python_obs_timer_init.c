
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct python_obs_timer {struct python_obs_timer* next; struct python_obs_timer** p_prev_next; } ;


 struct python_obs_timer* first_timer ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int timer_mutex ;

__attribute__((used)) static inline void python_obs_timer_init(struct python_obs_timer *timer)
{
 pthread_mutex_lock(&timer_mutex);

 struct python_obs_timer *next = first_timer;
 timer->next = next;
 timer->p_prev_next = &first_timer;
 if (next)
  next->p_prev_next = &timer->next;
 first_timer = timer;

 pthread_mutex_unlock(&timer_mutex);
}
