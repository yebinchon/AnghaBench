
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
 int pulseaudio_context ;
 int pulseaudio_context_state_changed ;
 int pulseaudio_lock () ;
 int pulseaudio_mainloop ;
 int * pulseaudio_properties () ;
 int pulseaudio_unlock () ;

__attribute__((used)) static void pulseaudio_init_context()
{
 pulseaudio_lock();

 pa_proplist *p = pulseaudio_properties();
 pulseaudio_context = pa_context_new_with_proplist(
  pa_threaded_mainloop_get_api(pulseaudio_mainloop),
  "OBS-Monitor", p);

 pa_context_set_state_callback(pulseaudio_context,
          pulseaudio_context_state_changed, ((void*)0));

 pa_context_connect(pulseaudio_context, ((void*)0), PA_CONTEXT_NOAUTOSPAWN,
      ((void*)0));
 pa_proplist_free(p);

 pulseaudio_unlock();
}
