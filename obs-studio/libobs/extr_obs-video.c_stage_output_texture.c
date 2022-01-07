
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_core_video {int* textures_copied; int * convert_textures; int *** copy_surfaces; scalar_t__ texture_converted; int output_texture; int gpu_conversion; } ;
typedef int gs_stagesurf_t ;


 int NUM_CHANNELS ;
 int gs_stage_texture (int *,int ) ;
 int profile_end (int ) ;
 int profile_start (int ) ;
 int stage_output_texture_name ;
 int unmap_last_surface (struct obs_core_video*) ;

__attribute__((used)) static inline void stage_output_texture(struct obs_core_video *video,
     int cur_texture)
{
 profile_start(stage_output_texture_name);

 unmap_last_surface(video);

 if (!video->gpu_conversion) {
  gs_stagesurf_t *copy = video->copy_surfaces[cur_texture][0];
  if (copy)
   gs_stage_texture(copy, video->output_texture);

  video->textures_copied[cur_texture] = 1;
 } else if (video->texture_converted) {
  for (int i = 0; i < NUM_CHANNELS; i++) {
   gs_stagesurf_t *copy =
    video->copy_surfaces[cur_texture][i];
   if (copy)
    gs_stage_texture(copy,
       video->convert_textures[i]);
  }

  video->textures_copied[cur_texture] = 1;
 }

 profile_end(stage_output_texture_name);
}
