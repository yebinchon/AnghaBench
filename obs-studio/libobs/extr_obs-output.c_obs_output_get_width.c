
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {scalar_t__ scaled_width; int video; int video_encoder; TYPE_1__ info; } ;
typedef TYPE_2__ obs_output_t ;


 int OBS_OUTPUT_ENCODED ;
 int OBS_OUTPUT_VIDEO ;
 scalar_t__ obs_encoder_get_width (int ) ;
 int obs_output_valid (TYPE_2__ const*,char*) ;
 scalar_t__ video_output_get_width (int ) ;

uint32_t obs_output_get_width(const obs_output_t *output)
{
 if (!obs_output_valid(output, "obs_output_get_width"))
  return 0;
 if ((output->info.flags & OBS_OUTPUT_VIDEO) == 0)
  return 0;

 if (output->info.flags & OBS_OUTPUT_ENCODED)
  return obs_encoder_get_width(output->video_encoder);
 else
  return output->scaled_width != 0
          ? output->scaled_width
          : video_output_get_width(output->video);
}
