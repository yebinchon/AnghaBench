
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pa_threaded_mainloop_wait (int ) ;
 int pulse_mainloop ;

void pulse_wait()
{
 pa_threaded_mainloop_wait(pulse_mainloop);
}
