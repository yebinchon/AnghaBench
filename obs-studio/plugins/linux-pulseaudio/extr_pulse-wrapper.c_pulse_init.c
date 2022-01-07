
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_fast32_t ;


 int pa_threaded_mainloop_new () ;
 int pa_threaded_mainloop_start (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pulse_init_context () ;
 int pulse_mainloop ;
 int pulse_mutex ;
 scalar_t__ pulse_refs ;

int_fast32_t pulse_init()
{
 pthread_mutex_lock(&pulse_mutex);

 if (pulse_refs == 0) {
  pulse_mainloop = pa_threaded_mainloop_new();
  pa_threaded_mainloop_start(pulse_mainloop);

  pulse_init_context();
 }

 pulse_refs++;

 pthread_mutex_unlock(&pulse_mutex);

 return 0;
}
