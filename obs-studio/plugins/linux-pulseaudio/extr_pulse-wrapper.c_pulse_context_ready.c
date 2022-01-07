
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_fast32_t ;


 int PA_CONTEXT_IS_GOOD (scalar_t__) ;
 scalar_t__ PA_CONTEXT_READY ;
 scalar_t__ pa_context_get_state (int ) ;
 int pulse_context ;
 int pulse_lock () ;
 int pulse_unlock () ;
 int pulse_wait () ;

__attribute__((used)) static int_fast32_t pulse_context_ready()
{
 pulse_lock();

 if (!PA_CONTEXT_IS_GOOD(pa_context_get_state(pulse_context))) {
  pulse_unlock();
  return -1;
 }

 while (pa_context_get_state(pulse_context) != PA_CONTEXT_READY)
  pulse_wait();

 pulse_unlock();
 return 0;
}
