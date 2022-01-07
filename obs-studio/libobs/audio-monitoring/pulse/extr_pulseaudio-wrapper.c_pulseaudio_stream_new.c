
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_stream ;
typedef int pa_sample_spec ;
typedef int pa_proplist ;
typedef int pa_channel_map ;


 int pa_proplist_free (int *) ;
 int * pa_stream_new_with_proplist (int ,char const*,int const*,int const*,int *) ;
 int pulseaudio_context ;
 scalar_t__ pulseaudio_context_ready () ;
 int pulseaudio_lock () ;
 int * pulseaudio_properties () ;
 int pulseaudio_unlock () ;

pa_stream *pulseaudio_stream_new(const char *name, const pa_sample_spec *ss,
     const pa_channel_map *map)
{
 if (pulseaudio_context_ready() < 0)
  return ((void*)0);

 pulseaudio_lock();

 pa_proplist *p = pulseaudio_properties();
 pa_stream *s = pa_stream_new_with_proplist(pulseaudio_context, name, ss,
         map, p);
 pa_proplist_free(p);

 pulseaudio_unlock();
 return s;
}
