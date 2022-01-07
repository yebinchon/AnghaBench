
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void pa_context ;


 int UNUSED_PARAMETER (void*) ;
 int pulseaudio_signal (int ) ;

__attribute__((used)) static void pulseaudio_context_state_changed(pa_context *c, void *userdata)
{
 UNUSED_PARAMETER(userdata);
 UNUSED_PARAMETER(c);

 pulseaudio_signal(0);
}
