
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharpness_data {float texwidth; float texheight; float sharpness; int effect; int context; int texture_height; int texture_width; int sharpness_param; } ;
typedef int gs_effect_t ;


 int GS_RGBA ;
 int OBS_ALLOW_DIRECT_RENDERING ;
 int UNUSED_PARAMETER (int *) ;
 int gs_effect_set_float (int ,float) ;
 int obs_filter_get_target (int ) ;
 scalar_t__ obs_source_get_height (int ) ;
 scalar_t__ obs_source_get_width (int ) ;
 int obs_source_process_filter_begin (int ,int ,int ) ;
 int obs_source_process_filter_end (int ,int ,int ,int ) ;

__attribute__((used)) static void sharpness_render(void *data, gs_effect_t *effect)
{
 struct sharpness_data *filter = data;

 if (!obs_source_process_filter_begin(filter->context, GS_RGBA,
          OBS_ALLOW_DIRECT_RENDERING))
  return;

 filter->texwidth = (float)obs_source_get_width(
  obs_filter_get_target(filter->context));
 filter->texheight = (float)obs_source_get_height(
  obs_filter_get_target(filter->context));

 gs_effect_set_float(filter->sharpness_param, filter->sharpness);
 gs_effect_set_float(filter->texture_width, filter->texwidth);
 gs_effect_set_float(filter->texture_height, filter->texheight);

 obs_source_process_filter_end(filter->context, filter->effect, 0, 0);

 UNUSED_PARAMETER(effect);
}
