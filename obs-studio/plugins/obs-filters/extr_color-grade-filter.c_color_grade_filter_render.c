
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lut_filter_data {int effect; int context; int clut_amount; int target; } ;
typedef int obs_source_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 int GS_RGBA ;
 int OBS_ALLOW_DIRECT_RENDERING ;
 int UNUSED_PARAMETER (int *) ;
 int * gs_effect_get_param_by_name (int ,char*) ;
 int gs_effect_set_float (int *,int ) ;
 int gs_effect_set_texture (int *,int ) ;
 int * obs_filter_get_target (int ) ;
 int obs_source_process_filter_begin (int ,int ,int ) ;
 int obs_source_process_filter_end (int ,int ,int ,int ) ;
 int obs_source_skip_video_filter (int ) ;

__attribute__((used)) static void color_grade_filter_render(void *data, gs_effect_t *effect)
{
 struct lut_filter_data *filter = data;
 obs_source_t *target = obs_filter_get_target(filter->context);
 gs_eparam_t *param;

 if (!target || !filter->target || !filter->effect) {
  obs_source_skip_video_filter(filter->context);
  return;
 }

 if (!obs_source_process_filter_begin(filter->context, GS_RGBA,
          OBS_ALLOW_DIRECT_RENDERING))
  return;

 param = gs_effect_get_param_by_name(filter->effect, "clut");
 gs_effect_set_texture(param, filter->target);

 param = gs_effect_get_param_by_name(filter->effect, "clut_amount");
 gs_effect_set_float(param, filter->clut_amount);

 obs_source_process_filter_end(filter->context, filter->effect, 0, 0);

 UNUSED_PARAMETER(effect);
}
