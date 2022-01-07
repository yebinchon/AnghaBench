
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct python_obs_timer {int dummy; } ;
struct python_obs_callback {int dummy; } ;


 struct python_obs_timer* python_obs_callback_extra_data (struct python_obs_callback*) ;
 int python_obs_timer_init (struct python_obs_timer*) ;

__attribute__((used)) static void defer_timer_init(void *p_cb)
{
 struct python_obs_callback *cb = p_cb;
 struct python_obs_timer *timer = python_obs_callback_extra_data(cb);
 python_obs_timer_init(timer);
}
