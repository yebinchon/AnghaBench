
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pa_stream ;
struct TYPE_3__ {int tlength; } ;
struct TYPE_4__ {int playback_mutex; TYPE_1__ attr; int stream; int source; } ;


 int PULSE_DATA (void*) ;
 int UNUSED_PARAMETER (int *) ;
 TYPE_2__* data ;
 scalar_t__ obs_source_active (int ) ;
 int pa_stream_set_buffer_attr (int ,TYPE_1__*,int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pulseaudio_signal (int ) ;

__attribute__((used)) static void pulseaudio_underflow(pa_stream *p, void *userdata)
{
 UNUSED_PARAMETER(p);
 PULSE_DATA(userdata);

 pthread_mutex_lock(&data->playback_mutex);
 if (obs_source_active(data->source))
  data->attr.tlength = (data->attr.tlength * 3) / 2;

 pa_stream_set_buffer_attr(data->stream, &data->attr, ((void*)0), ((void*)0));
 pthread_mutex_unlock(&data->playback_mutex);

 pulseaudio_signal(0);
}
