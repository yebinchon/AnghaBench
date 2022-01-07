
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color_correction_filter_data {int effect; int context; int final_matrix; int final_matrix_param; int gamma; int gamma_param; } ;
typedef int gs_effect_t ;


 int GS_RGBA ;
 int OBS_ALLOW_DIRECT_RENDERING ;
 int UNUSED_PARAMETER (int *) ;
 int gs_effect_set_matrix4 (int ,int *) ;
 int gs_effect_set_vec3 (int ,int *) ;
 int obs_source_process_filter_begin (int ,int ,int ) ;
 int obs_source_process_filter_end (int ,int ,int ,int ) ;

__attribute__((used)) static void color_correction_filter_render(void *data, gs_effect_t *effect)
{
 struct color_correction_filter_data *filter = data;

 if (!obs_source_process_filter_begin(filter->context, GS_RGBA,
          OBS_ALLOW_DIRECT_RENDERING))
  return;


 gs_effect_set_vec3(filter->gamma_param, &filter->gamma);
 gs_effect_set_matrix4(filter->final_matrix_param,
         &filter->final_matrix);

 obs_source_process_filter_end(filter->context, filter->effect, 0, 0);

 UNUSED_PARAMETER(effect);
}
