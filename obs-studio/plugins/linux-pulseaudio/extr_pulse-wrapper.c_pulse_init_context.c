
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_proplist ;


 int PA_CONTEXT_NOAUTOSPAWN ;
 int pa_context_connect (int ,int *,int ,int *) ;
 int pa_context_new_with_proplist (int ,char*,int *) ;
 int pa_context_set_state_callback (int ,int ,int *) ;
 int pa_proplist_free (int *) ;
 int pa_threaded_mainloop_get_api (int ) ;
 int pulse_context ;
 int pulse_context_state_changed ;
 int pulse_lock () ;
 int pulse_mainloop ;
 int * pulse_properties () ;
 int pulse_unlock () ;

__attribute__((used)) static void pulse_init_context()
{
 pulse_lock();

 pa_proplist *p = pulse_properties();
 pulse_context = pa_context_new_with_proplist(
  pa_threaded_mainloop_get_api(pulse_mainloop), "OBS", p);

 pa_context_set_state_callback(pulse_context,
          pulse_context_state_changed, ((void*)0));

 pa_context_connect(pulse_context, ((void*)0), PA_CONTEXT_NOAUTOSPAWN, ((void*)0));
 pa_proplist_free(p);

 pulse_unlock();
}
