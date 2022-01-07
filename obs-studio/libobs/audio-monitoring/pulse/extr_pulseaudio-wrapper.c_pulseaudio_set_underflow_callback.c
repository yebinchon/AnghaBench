
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_stream_notify_cb_t ;
typedef int pa_stream ;


 int pa_stream_set_underflow_callback (int *,int ,void*) ;
 scalar_t__ pulseaudio_context_ready () ;
 int pulseaudio_lock () ;
 int pulseaudio_unlock () ;

void pulseaudio_set_underflow_callback(pa_stream *p, pa_stream_notify_cb_t cb,
           void *userdata)
{
 if (pulseaudio_context_ready() < 0)
  return;

 pulseaudio_lock();
 pa_stream_set_underflow_callback(p, cb, userdata);
 pulseaudio_unlock();
}
