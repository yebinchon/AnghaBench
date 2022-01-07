
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int audio_ts; } ;
typedef TYPE_1__ obs_source_t ;


 scalar_t__ obs_source_valid (TYPE_1__ const*,char*) ;

uint64_t obs_source_get_audio_timestamp(const obs_source_t *source)
{
 return obs_source_valid(source, "obs_source_get_audio_timestamp")
         ? source->audio_ts
         : 0;
}
