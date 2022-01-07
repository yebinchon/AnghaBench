
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int update_ms; int mutex; } ;
typedef TYPE_1__ obs_volmeter_t ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_volmeter_set_update_interval(obs_volmeter_t *volmeter,
          const unsigned int ms)
{
 if (!volmeter || !ms)
  return;

 pthread_mutex_lock(&volmeter->mutex);
 volmeter->update_ms = ms;
 pthread_mutex_unlock(&volmeter->mutex);
}
