
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pa_context_disconnect (int *) ;
 int pa_context_unref (int *) ;
 int pa_threaded_mainloop_free (int *) ;
 int pa_threaded_mainloop_stop (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int * pulseaudio_context ;
 int pulseaudio_lock () ;
 int * pulseaudio_mainloop ;
 int pulseaudio_mutex ;
 scalar_t__ pulseaudio_refs ;
 int pulseaudio_unlock () ;

void pulseaudio_unref()
{
 pthread_mutex_lock(&pulseaudio_mutex);

 if (--pulseaudio_refs == 0) {
  pulseaudio_lock();
  if (pulseaudio_context != ((void*)0)) {
   pa_context_disconnect(pulseaudio_context);
   pa_context_unref(pulseaudio_context);
   pulseaudio_context = ((void*)0);
  }
  pulseaudio_unlock();

  if (pulseaudio_mainloop != ((void*)0)) {
   pa_threaded_mainloop_stop(pulseaudio_mainloop);
   pa_threaded_mainloop_free(pulseaudio_mainloop);
   pulseaudio_mainloop = ((void*)0);
  }
 }

 pthread_mutex_unlock(&pulseaudio_mutex);
}
