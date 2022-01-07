
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
 int * pulse_context ;
 int pulse_lock () ;
 int * pulse_mainloop ;
 int pulse_mutex ;
 scalar_t__ pulse_refs ;
 int pulse_unlock () ;

void pulse_unref()
{
 pthread_mutex_lock(&pulse_mutex);

 if (--pulse_refs == 0) {
  pulse_lock();
  if (pulse_context != ((void*)0)) {
   pa_context_disconnect(pulse_context);
   pa_context_unref(pulse_context);
   pulse_context = ((void*)0);
  }
  pulse_unlock();

  if (pulse_mainloop != ((void*)0)) {
   pa_threaded_mainloop_stop(pulse_mainloop);
   pa_threaded_mainloop_free(pulse_mainloop);
   pulse_mainloop = ((void*)0);
  }
 }

 pthread_mutex_unlock(&pulse_mutex);
}
