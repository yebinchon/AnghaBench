
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pa_threaded_mainloop_signal (int ,int) ;
 int pulseaudio_mainloop ;

void pulseaudio_signal(int wait_for_accept)
{
 pa_threaded_mainloop_signal(pulseaudio_mainloop, wait_for_accept);
}
