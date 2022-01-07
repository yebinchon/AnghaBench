
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct video_scale_info {int dummy; } ;
struct TYPE_4__ {int video_conversion_set; struct video_scale_info video_conversion; } ;
typedef TYPE_1__ obs_output_t ;


 int obs_output_valid (TYPE_1__*,char*) ;
 int obs_ptr_valid (struct video_scale_info const*,char*) ;

void obs_output_set_video_conversion(obs_output_t *output,
         const struct video_scale_info *conversion)
{
 if (!obs_output_valid(output, "obs_output_set_video_conversion"))
  return;
 if (!obs_ptr_valid(conversion, "obs_output_set_video_conversion"))
  return;

 output->video_conversion = *conversion;
 output->video_conversion_set = 1;
}
