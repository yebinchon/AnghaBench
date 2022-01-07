
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_video {int * graphics; int * default_effect; int * bilinear_lowres_effect; int * area_effect; int * lanczos_effect; int * repeat_effect; int * bicubic_effect; int * conversion_effect; int * solid_effect; int * opaque_effect; int * default_rect_effect; int point_sampler; int transparent_texture; } ;
struct TYPE_2__ {struct obs_core_video video; } ;


 int gs_destroy (int *) ;
 int gs_effect_destroy (int *) ;
 int gs_enter_context (int *) ;
 int gs_leave_context () ;
 int gs_samplerstate_destroy (int ) ;
 int gs_texture_destroy (int ) ;
 TYPE_1__* obs ;

__attribute__((used)) static void obs_free_graphics(void)
{
 struct obs_core_video *video = &obs->video;

 if (video->graphics) {
  gs_enter_context(video->graphics);

  gs_texture_destroy(video->transparent_texture);

  gs_samplerstate_destroy(video->point_sampler);

  gs_effect_destroy(video->default_effect);
  gs_effect_destroy(video->default_rect_effect);
  gs_effect_destroy(video->opaque_effect);
  gs_effect_destroy(video->solid_effect);
  gs_effect_destroy(video->conversion_effect);
  gs_effect_destroy(video->bicubic_effect);
  gs_effect_destroy(video->repeat_effect);
  gs_effect_destroy(video->lanczos_effect);
  gs_effect_destroy(video->area_effect);
  gs_effect_destroy(video->bilinear_lowres_effect);
  video->default_effect = ((void*)0);

  gs_leave_context();

  gs_destroy(video->graphics);
  video->graphics = ((void*)0);
 }
}
