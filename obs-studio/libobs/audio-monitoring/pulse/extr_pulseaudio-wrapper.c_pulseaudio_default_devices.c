
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pulseaudio_default_output {int default_sink_name; } ;
struct TYPE_3__ {int default_sink_name; } ;
typedef TYPE_1__ pa_server_info ;
typedef int pa_context ;


 int UNUSED_PARAMETER (int *) ;
 int bstrdup (int ) ;
 int pulseaudio_signal (int ) ;

__attribute__((used)) static void pulseaudio_default_devices(pa_context *c, const pa_server_info *i,
           void *userdata)
{
 UNUSED_PARAMETER(c);
 struct pulseaudio_default_output *d =
  (struct pulseaudio_default_output *)userdata;
 d->default_sink_name = bstrdup(i->default_sink_name);
 pulseaudio_signal(0);
}
