
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pa_threaded_mainloop_unlock (int ) ;
 int pulse_mainloop ;

void pulse_unlock()
{
 pa_threaded_mainloop_unlock(pulse_mainloop);
}
