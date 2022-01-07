
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vec2 {int dummy; } ;
struct scroll_filter_data {int effect; int context; int sampler; int param_image; int param_mul; struct vec2 offset; int param_add; struct vec2 size_i; scalar_t__ cy; scalar_t__ limit_cy; scalar_t__ cx; scalar_t__ limit_cx; } ;
typedef int obs_source_t ;
typedef int gs_effect_t ;


 int GS_RGBA ;
 int OBS_NO_DIRECT_RENDERING ;
 int UNUSED_PARAMETER (int *) ;
 int gs_effect_set_next_sampler (int ,int ) ;
 int gs_effect_set_vec2 (int ,struct vec2*) ;
 int * obs_filter_get_target (int ) ;
 scalar_t__ obs_source_get_base_height (int *) ;
 scalar_t__ obs_source_get_base_width (int *) ;
 int obs_source_process_filter_begin (int ,int ,int ) ;
 int obs_source_process_filter_end (int ,int ,scalar_t__,scalar_t__) ;
 int obs_source_skip_video_filter (int ) ;
 int vec2_set (struct vec2*,float,float) ;
 int vec2_zero (struct vec2*) ;

__attribute__((used)) static void scroll_filter_render(void *data, gs_effect_t *effect)
{
 struct scroll_filter_data *filter = data;
 struct vec2 mul_val;
 uint32_t base_cx;
 uint32_t base_cy;
 uint32_t cx;
 uint32_t cy;

 obs_source_t *target = obs_filter_get_target(filter->context);
 base_cx = obs_source_get_base_width(target);
 base_cy = obs_source_get_base_height(target);

 cx = filter->limit_cx ? filter->cx : base_cx;
 cy = filter->limit_cy ? filter->cy : base_cy;

 if (base_cx && base_cy) {
  vec2_set(&filter->size_i, 1.0f / (float)base_cx,
    1.0f / (float)base_cy);
 } else {
  vec2_zero(&filter->size_i);
  obs_source_skip_video_filter(filter->context);
  return;
 }

 vec2_set(&mul_val, (float)cx / (float)base_cx,
   (float)cy / (float)base_cy);

 if (!obs_source_process_filter_begin(filter->context, GS_RGBA,
          OBS_NO_DIRECT_RENDERING))
  return;

 gs_effect_set_vec2(filter->param_add, &filter->offset);
 gs_effect_set_vec2(filter->param_mul, &mul_val);

 gs_effect_set_next_sampler(filter->param_image, filter->sampler);

 obs_source_process_filter_end(filter->context, filter->effect, cx, cy);

 UNUSED_PARAMETER(effect);
}
