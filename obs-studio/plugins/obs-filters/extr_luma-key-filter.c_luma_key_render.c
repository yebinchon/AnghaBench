
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct luma_key_filter_data {int effect; int context; int luma_min_smooth; int luma_min_smooth_param; int luma_max_smooth; int luma_max_smooth_param; int luma_min; int luma_min_param; int luma_max; int luma_max_param; } ;
typedef int gs_effect_t ;


 int GS_RGBA ;
 int OBS_ALLOW_DIRECT_RENDERING ;
 int UNUSED_PARAMETER (int *) ;
 int gs_effect_set_float (int ,int ) ;
 int obs_source_process_filter_begin (int ,int ,int ) ;
 int obs_source_process_filter_end (int ,int ,int ,int ) ;

__attribute__((used)) static void luma_key_render(void *data, gs_effect_t *effect)
{
 struct luma_key_filter_data *filter = data;

 if (!obs_source_process_filter_begin(filter->context, GS_RGBA,
          OBS_ALLOW_DIRECT_RENDERING))
  return;

 gs_effect_set_float(filter->luma_max_param, filter->luma_max);
 gs_effect_set_float(filter->luma_min_param, filter->luma_min);
 gs_effect_set_float(filter->luma_max_smooth_param,
       filter->luma_max_smooth);
 gs_effect_set_float(filter->luma_min_smooth_param,
       filter->luma_min_smooth);

 obs_source_process_filter_end(filter->context, filter->effect, 0, 0);

 UNUSED_PARAMETER(effect);
}
