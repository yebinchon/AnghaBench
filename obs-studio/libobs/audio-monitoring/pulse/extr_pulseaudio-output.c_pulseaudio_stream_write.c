
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pa_stream ;
struct TYPE_2__ {size_t bytesRemaining; int playback_mutex; } ;


 int PULSE_DATA (void*) ;
 int UNUSED_PARAMETER (int *) ;
 TYPE_1__* data ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pulseaudio_signal (int ) ;

__attribute__((used)) static void pulseaudio_stream_write(pa_stream *p, size_t nbytes, void *userdata)
{
 UNUSED_PARAMETER(p);
 PULSE_DATA(userdata);

 pthread_mutex_lock(&data->playback_mutex);
 data->bytesRemaining += nbytes;
 pthread_mutex_unlock(&data->playback_mutex);

 pulseaudio_signal(0);
}
