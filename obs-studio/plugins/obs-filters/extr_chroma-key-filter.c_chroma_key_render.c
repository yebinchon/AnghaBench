
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vec2 {int dummy; } ;
struct chroma_key_filter_data {int effect; int context; int spill; int spill_param; int smoothness; int smoothness_param; int similarity; int similarity_param; int pixel_size_param; struct vec2 chroma; int chroma_param; int gamma; int gamma_param; int brightness; int brightness_param; int contrast; int contrast_param; int color; int color_param; } ;
typedef int obs_source_t ;
typedef int gs_effect_t ;


 int GS_RGBA ;
 int OBS_ALLOW_DIRECT_RENDERING ;
 int UNUSED_PARAMETER (int *) ;
 int gs_effect_set_float (int ,int ) ;
 int gs_effect_set_vec2 (int ,struct vec2*) ;
 int gs_effect_set_vec4 (int ,int *) ;
 int * obs_filter_get_target (int ) ;
 scalar_t__ obs_source_get_base_height (int *) ;
 scalar_t__ obs_source_get_base_width (int *) ;
 int obs_source_process_filter_begin (int ,int ,int ) ;
 int obs_source_process_filter_end (int ,int ,int ,int ) ;
 int vec2_set (struct vec2*,float,float) ;

__attribute__((used)) static void chroma_key_render(void *data, gs_effect_t *effect)
{
 struct chroma_key_filter_data *filter = data;
 obs_source_t *target = obs_filter_get_target(filter->context);
 uint32_t width = obs_source_get_base_width(target);
 uint32_t height = obs_source_get_base_height(target);
 struct vec2 pixel_size;

 if (!obs_source_process_filter_begin(filter->context, GS_RGBA,
          OBS_ALLOW_DIRECT_RENDERING))
  return;

 vec2_set(&pixel_size, 1.0f / (float)width, 1.0f / (float)height);

 gs_effect_set_vec4(filter->color_param, &filter->color);
 gs_effect_set_float(filter->contrast_param, filter->contrast);
 gs_effect_set_float(filter->brightness_param, filter->brightness);
 gs_effect_set_float(filter->gamma_param, filter->gamma);
 gs_effect_set_vec2(filter->chroma_param, &filter->chroma);
 gs_effect_set_vec2(filter->pixel_size_param, &pixel_size);
 gs_effect_set_float(filter->similarity_param, filter->similarity);
 gs_effect_set_float(filter->smoothness_param, filter->smoothness);
 gs_effect_set_float(filter->spill_param, filter->spill);

 obs_source_process_filter_end(filter->context, filter->effect, 0, 0);

 UNUSED_PARAMETER(effect);
}
