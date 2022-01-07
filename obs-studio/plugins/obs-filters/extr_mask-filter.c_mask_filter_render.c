
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {float member_0; float member_1; float x; float y; } ;
struct mask_filter_data {int effect; int context; int color; int target; scalar_t__ lock_aspect; } ;
typedef int obs_source_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 int GS_RGBA ;
 int OBS_ALLOW_DIRECT_RENDERING ;
 int UNUSED_PARAMETER (int *) ;
 int * gs_effect_get_param_by_name (int ,char*) ;
 int gs_effect_set_texture (int *,int ) ;
 int gs_effect_set_vec2 (int *,struct vec2*) ;
 int gs_effect_set_vec4 (int *,int *) ;
 scalar_t__ gs_texture_get_height (int ) ;
 scalar_t__ gs_texture_get_width (int ) ;
 int * obs_filter_get_target (int ) ;
 scalar_t__ obs_source_get_base_height (int *) ;
 scalar_t__ obs_source_get_base_width (int *) ;
 int obs_source_process_filter_begin (int ,int ,int ) ;
 int obs_source_process_filter_end (int ,int ,int ,int ) ;
 int obs_source_skip_video_filter (int ) ;
 int vec2_div (struct vec2*,struct vec2*,struct vec2*) ;
 int vec2_mulf (struct vec2*,struct vec2*,float) ;
 int vec2_neg (struct vec2*,struct vec2*) ;
 int vec2_sub (struct vec2*,struct vec2*,struct vec2*) ;

__attribute__((used)) static void mask_filter_render(void *data, gs_effect_t *effect)
{
 struct mask_filter_data *filter = data;
 obs_source_t *target = obs_filter_get_target(filter->context);
 gs_eparam_t *param;
 struct vec2 add_val = {0};
 struct vec2 mul_val = {1.0f, 1.0f};

 if (!target || !filter->target || !filter->effect) {
  obs_source_skip_video_filter(filter->context);
  return;
 }

 if (filter->lock_aspect) {
  struct vec2 source_size;
  struct vec2 mask_size;
  struct vec2 mask_temp;
  float source_aspect;
  float mask_aspect;
  bool size_to_x;
  float fix;

  source_size.x = (float)obs_source_get_base_width(target);
  source_size.y = (float)obs_source_get_base_height(target);
  mask_size.x = (float)gs_texture_get_width(filter->target);
  mask_size.y = (float)gs_texture_get_height(filter->target);

  source_aspect = source_size.x / source_size.y;
  mask_aspect = mask_size.x / mask_size.y;
  size_to_x = (source_aspect < mask_aspect);

  fix = size_to_x ? (source_size.x / mask_size.x)
    : (source_size.y / mask_size.y);

  vec2_mulf(&mask_size, &mask_size, fix);
  vec2_div(&mul_val, &source_size, &mask_size);
  vec2_mulf(&source_size, &source_size, 0.5f);
  vec2_mulf(&mask_temp, &mask_size, 0.5f);
  vec2_sub(&add_val, &source_size, &mask_temp);
  vec2_neg(&add_val, &add_val);
  vec2_div(&add_val, &add_val, &mask_size);
 }

 if (!obs_source_process_filter_begin(filter->context, GS_RGBA,
          OBS_ALLOW_DIRECT_RENDERING))
  return;

 param = gs_effect_get_param_by_name(filter->effect, "target");
 gs_effect_set_texture(param, filter->target);

 param = gs_effect_get_param_by_name(filter->effect, "color");
 gs_effect_set_vec4(param, &filter->color);

 param = gs_effect_get_param_by_name(filter->effect, "mul_val");
 gs_effect_set_vec2(param, &mul_val);

 param = gs_effect_get_param_by_name(filter->effect, "add_val");
 gs_effect_set_vec2(param, &add_val);

 obs_source_process_filter_end(filter->context, filter->effect, 0, 0);

 UNUSED_PARAMETER(effect);
}
