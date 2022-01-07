
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_stream_flags_t ;
typedef int pa_stream ;
typedef int pa_buffer_attr ;
typedef int int_fast32_t ;


 int bfree (char*) ;
 char* bzalloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int pa_stream_connect_playback (int *,char*,int const*,int ,int *,int *) ;
 scalar_t__ pulseaudio_context_ready () ;
 int pulseaudio_lock () ;
 int pulseaudio_unlock () ;
 int strlen (char const*) ;

int_fast32_t pulseaudio_connect_playback(pa_stream *s, const char *name,
      const pa_buffer_attr *attr,
      pa_stream_flags_t flags)
{
 if (pulseaudio_context_ready() < 0)
  return -1;

 size_t dev_len = strlen(name) - 8;
 char *device = bzalloc(dev_len + 1);
 memcpy(device, name, dev_len);

 pulseaudio_lock();
 int_fast32_t ret =
  pa_stream_connect_playback(s, device, attr, flags, ((void*)0), ((void*)0));
 pulseaudio_unlock();

 bfree(device);
 return ret;
}
