
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int audio_active; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_source_dosignal (TYPE_1__*,char*,char*) ;
 int obs_source_valid (TYPE_1__*,char*) ;
 int os_atomic_set_bool (int *,int) ;

void obs_source_set_audio_active(obs_source_t *source, bool active)
{
 if (!obs_source_valid(source, "obs_source_set_audio_active"))
  return;

 if (os_atomic_set_bool(&source->audio_active, active) == active)
  return;

 if (active)
  obs_source_dosignal(source, "source_audio_activate",
        "audio_activate");
 else
  obs_source_dosignal(source, "source_audio_deactivate",
        "audio_deactivate");
}
