
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_fast32_t ;


 int pa_threaded_mainloop_new () ;
 int pa_threaded_mainloop_start (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pulseaudio_init_context () ;
 int pulseaudio_mainloop ;
 int pulseaudio_mutex ;
 scalar_t__ pulseaudio_refs ;

int_fast32_t pulseaudio_init()
{
 pthread_mutex_lock(&pulseaudio_mutex);

 if (pulseaudio_refs == 0) {
  pulseaudio_mainloop = pa_threaded_mainloop_new();
  pa_threaded_mainloop_start(pulseaudio_mainloop);

  pulseaudio_init_context();
 }

 pulseaudio_refs++;

 pthread_mutex_unlock(&pulseaudio_mutex);

 return 0;
}
