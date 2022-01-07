
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pa_threaded_mainloop_unlock (int ) ;
 int pulseaudio_mainloop ;

void pulseaudio_unlock()
{
 pa_threaded_mainloop_unlock(pulseaudio_mainloop);
}
