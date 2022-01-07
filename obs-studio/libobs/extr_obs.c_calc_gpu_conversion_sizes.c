
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct obs_video_info {scalar_t__ output_width; int output_format; } ;
struct obs_core_video {int conversion_needed; char** conversion_techs; float conversion_width_i; } ;
struct TYPE_2__ {struct obs_core_video video; } ;





 TYPE_1__* obs ;

__attribute__((used)) static inline void calc_gpu_conversion_sizes(const struct obs_video_info *ovi)
{
 struct obs_core_video *video = &obs->video;

 video->conversion_needed = 0;
 video->conversion_techs[0] = ((void*)0);
 video->conversion_techs[1] = ((void*)0);
 video->conversion_techs[2] = ((void*)0);
 video->conversion_width_i = 0.f;

 switch ((uint32_t)ovi->output_format) {
 case 130:
  video->conversion_needed = 1;
  video->conversion_techs[0] = "Planar_Y";
  video->conversion_techs[1] = "Planar_U_Left";
  video->conversion_techs[2] = "Planar_V_Left";
  video->conversion_width_i = 1.f / (float)ovi->output_width;
  break;
 case 128:
  video->conversion_needed = 1;
  video->conversion_techs[0] = "NV12_Y";
  video->conversion_techs[1] = "NV12_UV";
  video->conversion_width_i = 1.f / (float)ovi->output_width;
  break;
 case 129:
  video->conversion_needed = 1;
  video->conversion_techs[0] = "Planar_Y";
  video->conversion_techs[1] = "Planar_U";
  video->conversion_techs[2] = "Planar_V";
  break;
 }
}
