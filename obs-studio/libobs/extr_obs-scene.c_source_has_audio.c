
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int output_flags; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
typedef TYPE_2__ obs_source_t ;


 int OBS_SOURCE_AUDIO ;
 int OBS_SOURCE_COMPOSITE ;

__attribute__((used)) static inline bool source_has_audio(obs_source_t *source)
{
 return (source->info.output_flags &
  (OBS_SOURCE_AUDIO | OBS_SOURCE_COMPOSITE)) != 0;
}
