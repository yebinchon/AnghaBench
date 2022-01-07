
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct vec2 {int dummy; } ;
struct TYPE_2__ {scalar_t__ output_format; } ;
struct obs_core_video {scalar_t__ base_width; scalar_t__ base_height; int * default_effect; TYPE_1__ ovi; int * output_texture; int * render_texture; } ;
typedef int gs_texture_t ;
typedef int gs_technique_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 scalar_t__ VIDEO_FORMAT_RGBA ;
 int * get_scale_effect (struct obs_core_video*,scalar_t__,scalar_t__) ;
 int gs_draw_sprite (int *,int ,scalar_t__,scalar_t__) ;
 int * gs_effect_get_param_by_name (int *,char*) ;
 int * gs_effect_get_technique (int *,char*) ;
 int gs_effect_set_texture (int *,int *) ;
 int gs_effect_set_vec2 (int *,struct vec2*) ;
 int gs_enable_blending (int) ;
 int gs_set_render_target (int *,int *) ;
 size_t gs_technique_begin (int *) ;
 int gs_technique_begin_pass (int *,size_t) ;
 int gs_technique_end (int *) ;
 int gs_technique_end_pass (int *) ;
 scalar_t__ gs_texture_get_height (int *) ;
 scalar_t__ gs_texture_get_width (int *) ;
 int profile_end (int ) ;
 int profile_start (int ) ;
 int render_output_texture_name ;
 int set_render_size (scalar_t__,scalar_t__) ;
 int vec2_set (struct vec2*,float,float) ;

__attribute__((used)) static inline gs_texture_t *render_output_texture(struct obs_core_video *video)
{
 gs_texture_t *texture = video->render_texture;
 gs_texture_t *target = video->output_texture;
 uint32_t width = gs_texture_get_width(target);
 uint32_t height = gs_texture_get_height(target);

 gs_effect_t *effect = get_scale_effect(video, width, height);
 gs_technique_t *tech;

 if (video->ovi.output_format == VIDEO_FORMAT_RGBA) {
  tech = gs_effect_get_technique(effect, "DrawAlphaDivide");
 } else {
  if ((effect == video->default_effect) &&
      (width == video->base_width) &&
      (height == video->base_height))
   return texture;

  tech = gs_effect_get_technique(effect, "Draw");
 }

 profile_start(render_output_texture_name);

 gs_eparam_t *image = gs_effect_get_param_by_name(effect, "image");
 gs_eparam_t *bres =
  gs_effect_get_param_by_name(effect, "base_dimension");
 gs_eparam_t *bres_i =
  gs_effect_get_param_by_name(effect, "base_dimension_i");
 size_t passes, i;

 gs_set_render_target(target, ((void*)0));
 set_render_size(width, height);

 if (bres) {
  struct vec2 base;
  vec2_set(&base, (float)video->base_width,
    (float)video->base_height);
  gs_effect_set_vec2(bres, &base);
 }

 if (bres_i) {
  struct vec2 base_i;
  vec2_set(&base_i, 1.0f / (float)video->base_width,
    1.0f / (float)video->base_height);
  gs_effect_set_vec2(bres_i, &base_i);
 }

 gs_effect_set_texture(image, texture);

 gs_enable_blending(0);
 passes = gs_technique_begin(tech);
 for (i = 0; i < passes; i++) {
  gs_technique_begin_pass(tech, i);
  gs_draw_sprite(texture, 0, width, height);
  gs_technique_end_pass(tech);
 }
 gs_technique_end(tech);
 gs_enable_blending(1);

 profile_end(render_output_texture_name);

 return target;
}
