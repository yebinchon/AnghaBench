
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_fast32_t ;


 int PA_CONTEXT_IS_GOOD (scalar_t__) ;
 scalar_t__ PA_CONTEXT_READY ;
 scalar_t__ pa_context_get_state (int ) ;
 int pulseaudio_context ;
 int pulseaudio_lock () ;
 int pulseaudio_unlock () ;
 int pulseaudio_wait () ;

__attribute__((used)) static int_fast32_t pulseaudio_context_ready()
{
 pulseaudio_lock();

 if (!PA_CONTEXT_IS_GOOD(pa_context_get_state(pulseaudio_context))) {
  pulseaudio_unlock();
  return -1;
 }

 while (pa_context_get_state(pulseaudio_context) != PA_CONTEXT_READY)
  pulseaudio_wait();

 pulseaudio_unlock();
 return 0;
}
