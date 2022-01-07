
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crop_filter_data {int height; int width; int effect; int context; int add_val; int param_add; int mul_val; int param_mul; } ;
typedef int gs_effect_t ;


 int GS_RGBA ;
 int OBS_NO_DIRECT_RENDERING ;
 int UNUSED_PARAMETER (int *) ;
 int gs_effect_set_vec2 (int ,int *) ;
 int obs_source_process_filter_begin (int ,int ,int ) ;
 int obs_source_process_filter_end (int ,int ,int ,int ) ;

__attribute__((used)) static void crop_filter_render(void *data, gs_effect_t *effect)
{
 struct crop_filter_data *filter = data;

 if (!obs_source_process_filter_begin(filter->context, GS_RGBA,
          OBS_NO_DIRECT_RENDERING))
  return;

 gs_effect_set_vec2(filter->param_mul, &filter->mul_val);
 gs_effect_set_vec2(filter->param_add, &filter->add_val);

 obs_source_process_filter_end(filter->context, filter->effect,
          filter->width, filter->height);

 UNUSED_PARAMETER(effect);
}
