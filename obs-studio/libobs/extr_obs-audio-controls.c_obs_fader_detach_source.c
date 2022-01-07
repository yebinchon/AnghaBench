
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int signal_handler_t ;
typedef int obs_source_t ;
struct TYPE_4__ {int mutex; int * source; } ;
typedef TYPE_1__ obs_fader_t ;


 int fader_source_destroyed ;
 int fader_source_volume_changed ;
 int * obs_source_get_signal_handler (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int signal_handler_disconnect (int *,char*,int ,TYPE_1__*) ;

void obs_fader_detach_source(obs_fader_t *fader)
{
 signal_handler_t *sh;
 obs_source_t *source;

 if (!fader)
  return;

 pthread_mutex_lock(&fader->mutex);
 source = fader->source;
 fader->source = ((void*)0);
 pthread_mutex_unlock(&fader->mutex);

 if (!source)
  return;

 sh = obs_source_get_signal_handler(source);
 signal_handler_disconnect(sh, "volume", fader_source_volume_changed,
      fader);
 signal_handler_disconnect(sh, "destroy", fader_source_destroyed, fader);
}
