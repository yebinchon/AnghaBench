
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_video_info {int output_height; int output_width; int base_height; int base_width; } ;
struct obs_core_video {void* output_texture; void* render_texture; scalar_t__** copy_surfaces; scalar_t__ gpu_conversion; scalar_t__ using_nv12_tex; } ;
struct TYPE_2__ {struct obs_core_video video; } ;


 int GS_RENDER_TARGET ;
 int GS_RGBA ;
 size_t NUM_TEXTURES ;
 scalar_t__ gs_stagesurface_create (int ,int ,int ) ;
 scalar_t__ gs_stagesurface_create_nv12 (int ,int ) ;
 void* gs_texture_create (int ,int ,int ,int,int *,int ) ;
 TYPE_1__* obs ;
 int obs_init_gpu_copy_surfaces (struct obs_video_info*,size_t) ;

__attribute__((used)) static bool obs_init_textures(struct obs_video_info *ovi)
{
 struct obs_core_video *video = &obs->video;

 for (size_t i = 0; i < NUM_TEXTURES; i++) {
   if (video->gpu_conversion) {
    if (!obs_init_gpu_copy_surfaces(ovi, i))
     return 0;
   } else {
    video->copy_surfaces[i][0] =
     gs_stagesurface_create(
      ovi->output_width,
      ovi->output_height, GS_RGBA);
    if (!video->copy_surfaces[i][0])
     return 0;
   }



 }

 video->render_texture = gs_texture_create(ovi->base_width,
        ovi->base_height, GS_RGBA, 1,
        ((void*)0), GS_RENDER_TARGET);

 if (!video->render_texture)
  return 0;

 video->output_texture = gs_texture_create(ovi->output_width,
        ovi->output_height, GS_RGBA,
        1, ((void*)0), GS_RENDER_TARGET);

 if (!video->output_texture)
  return 0;

 return 1;
}
