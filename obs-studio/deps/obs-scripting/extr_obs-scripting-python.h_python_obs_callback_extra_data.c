
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct python_obs_callback {int dummy; } ;



__attribute__((used)) static inline void *
python_obs_callback_extra_data(struct python_obs_callback *cb)
{
 return (void *)&cb[1];
}
