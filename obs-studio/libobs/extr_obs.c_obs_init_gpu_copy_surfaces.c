
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_output_info {int format; } ;
struct obs_video_info {int output_width; int output_height; } ;
struct obs_core_video {void*** copy_surfaces; int video; } ;
struct TYPE_2__ {struct obs_core_video video; } ;


 int GS_R8 ;
 int GS_R8G8 ;



 void* gs_stagesurface_create (int,int,int ) ;
 TYPE_1__* obs ;
 struct video_output_info* video_output_get_info (int ) ;

__attribute__((used)) static bool obs_init_gpu_copy_surfaces(struct obs_video_info *ovi, size_t i)
{
 struct obs_core_video *video = &obs->video;

 video->copy_surfaces[i][0] = gs_stagesurface_create(
  ovi->output_width, ovi->output_height, GS_R8);
 if (!video->copy_surfaces[i][0])
  return 0;

 const struct video_output_info *info =
  video_output_get_info(video->video);
 switch (info->format) {
 case 130:
  video->copy_surfaces[i][1] = gs_stagesurface_create(
   ovi->output_width / 2, ovi->output_height / 2, GS_R8);
  if (!video->copy_surfaces[i][1])
   return 0;
  video->copy_surfaces[i][2] = gs_stagesurface_create(
   ovi->output_width / 2, ovi->output_height / 2, GS_R8);
  if (!video->copy_surfaces[i][2])
   return 0;
  break;
 case 128:
  video->copy_surfaces[i][1] = gs_stagesurface_create(
   ovi->output_width / 2, ovi->output_height / 2, GS_R8G8);
  if (!video->copy_surfaces[i][1])
   return 0;
  break;
 case 129:
  video->copy_surfaces[i][1] = gs_stagesurface_create(
   ovi->output_width, ovi->output_height, GS_R8);
  if (!video->copy_surfaces[i][1])
   return 0;
  video->copy_surfaces[i][2] = gs_stagesurface_create(
   ovi->output_width, ovi->output_height, GS_R8);
  if (!video->copy_surfaces[i][2])
   return 0;
  break;
 default:
  break;
 }

 return 1;
}
