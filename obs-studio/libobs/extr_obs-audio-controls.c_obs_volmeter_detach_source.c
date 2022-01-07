
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int signal_handler_t ;
struct TYPE_5__ {int mutex; int * source; } ;
typedef TYPE_1__ obs_volmeter_t ;
typedef int obs_source_t ;


 int * obs_source_get_signal_handler (int *) ;
 int obs_source_remove_audio_capture_callback (int *,int ,TYPE_1__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int signal_handler_disconnect (int *,char*,int ,TYPE_1__*) ;
 int volmeter_source_data_received ;
 int volmeter_source_destroyed ;
 int volmeter_source_volume_changed ;

void obs_volmeter_detach_source(obs_volmeter_t *volmeter)
{
 signal_handler_t *sh;
 obs_source_t *source;

 if (!volmeter)
  return;

 pthread_mutex_lock(&volmeter->mutex);
 source = volmeter->source;
 volmeter->source = ((void*)0);
 pthread_mutex_unlock(&volmeter->mutex);

 if (!source)
  return;

 sh = obs_source_get_signal_handler(source);
 signal_handler_disconnect(sh, "volume", volmeter_source_volume_changed,
      volmeter);
 signal_handler_disconnect(sh, "destroy", volmeter_source_destroyed,
      volmeter);
 obs_source_remove_audio_capture_callback(
  source, volmeter_source_data_received, volmeter);
}
