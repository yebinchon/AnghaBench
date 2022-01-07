
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pa_threaded_mainloop_accept (int ) ;
 int pulseaudio_mainloop ;

void pulseaudio_accept()
{
 pa_threaded_mainloop_accept(pulseaudio_mainloop);
}
