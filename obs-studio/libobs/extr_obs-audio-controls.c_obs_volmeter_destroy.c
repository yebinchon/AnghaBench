
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mutex; int callback_mutex; int callbacks; } ;
typedef TYPE_1__ obs_volmeter_t ;


 int bfree (TYPE_1__*) ;
 int da_free (int ) ;
 int obs_volmeter_detach_source (TYPE_1__*) ;
 int pthread_mutex_destroy (int *) ;

void obs_volmeter_destroy(obs_volmeter_t *volmeter)
{
 if (!volmeter)
  return;

 obs_volmeter_detach_source(volmeter);
 da_free(volmeter->callbacks);
 pthread_mutex_destroy(&volmeter->callback_mutex);
 pthread_mutex_destroy(&volmeter->mutex);

 bfree(volmeter);
}
