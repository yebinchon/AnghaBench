
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color_key_filter_data {int effect; int context; int smoothness; int smoothness_param; int similarity; int similarity_param; int key_color; int key_color_param; int gamma; int gamma_param; int brightness; int brightness_param; int contrast; int contrast_param; int color; int color_param; } ;
typedef int gs_effect_t ;


 int GS_RGBA ;
 int OBS_ALLOW_DIRECT_RENDERING ;
 int UNUSED_PARAMETER (int *) ;
 int gs_effect_set_float (int ,int ) ;
 int gs_effect_set_vec4 (int ,int *) ;
 int obs_source_process_filter_begin (int ,int ,int ) ;
 int obs_source_process_filter_end (int ,int ,int ,int ) ;

__attribute__((used)) static void color_key_render(void *data, gs_effect_t *effect)
{
 struct color_key_filter_data *filter = data;

 if (!obs_source_process_filter_begin(filter->context, GS_RGBA,
          OBS_ALLOW_DIRECT_RENDERING))
  return;

 gs_effect_set_vec4(filter->color_param, &filter->color);
 gs_effect_set_float(filter->contrast_param, filter->contrast);
 gs_effect_set_float(filter->brightness_param, filter->brightness);
 gs_effect_set_float(filter->gamma_param, filter->gamma);
 gs_effect_set_vec4(filter->key_color_param, &filter->key_color);
 gs_effect_set_float(filter->similarity_param, filter->similarity);
 gs_effect_set_float(filter->smoothness_param, filter->smoothness);

 obs_source_process_filter_end(filter->context, filter->effect, 0, 0);

 UNUSED_PARAMETER(effect);
}
