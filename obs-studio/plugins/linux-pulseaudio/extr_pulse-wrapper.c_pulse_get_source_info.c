
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_source_info_cb_t ;
typedef int pa_operation ;
typedef int int_fast32_t ;


 scalar_t__ PA_OPERATION_RUNNING ;
 int * pa_context_get_source_info_by_name (int ,char const*,int ,void*) ;
 scalar_t__ pa_operation_get_state (int *) ;
 int pa_operation_unref (int *) ;
 int pulse_context ;
 scalar_t__ pulse_context_ready () ;
 int pulse_lock () ;
 int pulse_unlock () ;
 int pulse_wait () ;

int_fast32_t pulse_get_source_info(pa_source_info_cb_t cb, const char *name,
       void *userdata)
{
 if (pulse_context_ready() < 0)
  return -1;

 pulse_lock();

 pa_operation *op = pa_context_get_source_info_by_name(
  pulse_context, name, cb, userdata);
 if (!op) {
  pulse_unlock();
  return -1;
 }
 while (pa_operation_get_state(op) == PA_OPERATION_RUNNING)
  pulse_wait();
 pa_operation_unref(op);

 pulse_unlock();

 return 0;
}
