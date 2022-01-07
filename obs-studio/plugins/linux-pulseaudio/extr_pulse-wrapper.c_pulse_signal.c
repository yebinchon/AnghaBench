
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pa_threaded_mainloop_signal (int ,int) ;
 int pulse_mainloop ;

void pulse_signal(int wait_for_accept)
{
 pa_threaded_mainloop_signal(pulse_mainloop, wait_for_accept);
}
