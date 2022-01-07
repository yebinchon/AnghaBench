
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tick_callback {void (* member_0 ) (void*,float) ;void* member_1; } ;
struct TYPE_3__ {int draw_callbacks_mutex; int tick_callbacks; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 int da_insert (int ,int ,struct tick_callback*) ;
 TYPE_2__* obs ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_add_tick_callback(void (*tick)(void *param, float seconds),
      void *param)
{
 if (!obs)
  return;

 struct tick_callback data = {tick, param};

 pthread_mutex_lock(&obs->data.draw_callbacks_mutex);
 da_insert(obs->data.tick_callbacks, 0, &data);
 pthread_mutex_unlock(&obs->data.draw_callbacks_mutex);
}
