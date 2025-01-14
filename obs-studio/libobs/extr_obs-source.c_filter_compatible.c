
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int output_flags; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
typedef TYPE_2__ obs_source_t ;


 int OBS_SOURCE_ASYNC ;
 int OBS_SOURCE_AUDIO ;
 int OBS_SOURCE_VIDEO ;

__attribute__((used)) static bool filter_compatible(obs_source_t *source, obs_source_t *filter)
{
 uint32_t s_caps = source->info.output_flags;
 uint32_t f_caps = filter->info.output_flags;

 if ((f_caps & OBS_SOURCE_AUDIO) != 0 &&
     (f_caps & OBS_SOURCE_VIDEO) == 0)
  f_caps &= ~OBS_SOURCE_ASYNC;

 return (s_caps & f_caps) == f_caps;
}
