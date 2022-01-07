
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pa_threaded_mainloop_lock (int ) ;
 int pulseaudio_mainloop ;

void pulseaudio_lock()
{
 pa_threaded_mainloop_lock(pulseaudio_mainloop);
}
