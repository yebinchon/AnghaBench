
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int flags; } ;
struct obs_output {TYPE_1__ info; } ;


 int OBS_OUTPUT_AUDIO ;
 int OBS_OUTPUT_ENCODED ;
 int OBS_OUTPUT_SERVICE ;
 int OBS_OUTPUT_VIDEO ;

__attribute__((used)) static inline void convert_flags(const struct obs_output *output,
     uint32_t flags, bool *encoded, bool *has_video,
     bool *has_audio, bool *has_service)
{
 *encoded = (output->info.flags & OBS_OUTPUT_ENCODED) != 0;
 if (!flags)
  flags = output->info.flags;
 else
  flags &= output->info.flags;

 *has_video = (flags & OBS_OUTPUT_VIDEO) != 0;
 *has_audio = (flags & OBS_OUTPUT_AUDIO) != 0;
 *has_service = (flags & OBS_OUTPUT_SERVICE) != 0;
}
