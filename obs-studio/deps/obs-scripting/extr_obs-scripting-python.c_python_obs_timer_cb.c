
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct python_obs_timer {int dummy; } ;
struct python_obs_callback {int dummy; } ;



__attribute__((used)) static inline struct python_obs_callback *
python_obs_timer_cb(struct python_obs_timer *timer)
{
 return &((struct python_obs_callback *)timer)[-1];
}
