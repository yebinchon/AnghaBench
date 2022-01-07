
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_core_video {scalar_t__ gpu_conversion; } ;
typedef int gs_texture_t ;


 int GS_NEITHER ;
 int gs_begin_scene () ;
 int gs_enable_blending (int) ;
 int gs_enable_depth_test (int) ;
 int gs_end_scene () ;
 int gs_flush () ;
 int gs_set_cull_mode (int ) ;
 int gs_set_render_target (int *,int *) ;
 int output_gpu_encoders (struct obs_core_video*,int) ;
 int render_convert_texture (struct obs_core_video*,int *) ;
 int render_main_texture (struct obs_core_video*) ;
 int * render_output_texture (struct obs_core_video*) ;
 int stage_output_texture (struct obs_core_video*,int) ;

__attribute__((used)) static inline void render_video(struct obs_core_video *video, bool raw_active,
    const bool gpu_active, int cur_texture)
{
 gs_begin_scene();

 gs_enable_depth_test(0);
 gs_set_cull_mode(GS_NEITHER);

 render_main_texture(video);

 if (raw_active || gpu_active) {
  gs_texture_t *texture = render_output_texture(video);






  if (video->gpu_conversion)
   render_convert_texture(video, texture);
  if (raw_active)
   stage_output_texture(video, cur_texture);
 }

 gs_set_render_target(((void*)0), ((void*)0));
 gs_enable_blending(1);

 gs_end_scene();
}
