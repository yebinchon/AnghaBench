
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mutex; int callback_mutex; int callbacks; } ;
typedef TYPE_1__ obs_fader_t ;


 int bfree (TYPE_1__*) ;
 int da_free (int ) ;
 int obs_fader_detach_source (TYPE_1__*) ;
 int pthread_mutex_destroy (int *) ;

void obs_fader_destroy(obs_fader_t *fader)
{
 if (!fader)
  return;

 obs_fader_detach_source(fader);
 da_free(fader->callbacks);
 pthread_mutex_destroy(&fader->callback_mutex);
 pthread_mutex_destroy(&fader->mutex);

 bfree(fader);
}
