
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_source_info_cb_t ;
typedef int pa_operation ;
typedef int int_fast32_t ;


 scalar_t__ PA_OPERATION_RUNNING ;
 int * pa_context_get_source_info_list (int ,int ,void*) ;
 scalar_t__ pa_operation_get_state (int *) ;
 int pa_operation_unref (int *) ;
 int pulseaudio_context ;
 scalar_t__ pulseaudio_context_ready () ;
 int pulseaudio_lock () ;
 int pulseaudio_unlock () ;
 int pulseaudio_wait () ;

int_fast32_t pulseaudio_get_source_info_list(pa_source_info_cb_t cb,
          void *userdata)
{
 if (pulseaudio_context_ready() < 0)
  return -1;

 pulseaudio_lock();

 pa_operation *op = pa_context_get_source_info_list(pulseaudio_context,
          cb, userdata);
 if (!op) {
  pulseaudio_unlock();
  return -1;
 }
 while (pa_operation_get_state(op) == PA_OPERATION_RUNNING)
  pulseaudio_wait();
 pa_operation_unref(op);

 pulseaudio_unlock();

 return 0;
}
