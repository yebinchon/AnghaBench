
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scale_filter_data {scalar_t__ sampling; int cy_out; int cx_out; int effect; int context; int point_sampler; int image_param; scalar_t__ undistort_factor; scalar_t__ undistort_factor_param; int dimension_i; scalar_t__ dimension_i_param; int dimension; scalar_t__ dimension_param; int target_valid; int valid; scalar_t__ upscale; scalar_t__ undistort; } ;
typedef int gs_effect_t ;


 int GS_RGBA ;
 int OBS_NO_DIRECT_RENDERING ;
 scalar_t__ OBS_SCALE_POINT ;
 int UNUSED_PARAMETER (int *) ;
 int gs_effect_set_float (scalar_t__,float) ;
 int gs_effect_set_next_sampler (int ,int ) ;
 int gs_effect_set_vec2 (scalar_t__,int *) ;
 int obs_source_process_filter_begin (int ,int ,int ) ;
 int obs_source_process_filter_tech_end (int ,int ,int ,int ,char const*) ;
 int obs_source_skip_video_filter (int ) ;

__attribute__((used)) static void scale_filter_render(void *data, gs_effect_t *effect)
{
 struct scale_filter_data *filter = data;
 const char *technique =
  filter->undistort ? "DrawUndistort"
      : (filter->upscale ? "DrawUpscale" : "Draw");

 if (!filter->valid || !filter->target_valid) {
  obs_source_skip_video_filter(filter->context);
  return;
 }

 if (!obs_source_process_filter_begin(filter->context, GS_RGBA,
          OBS_NO_DIRECT_RENDERING))
  return;

 if (filter->dimension_param)
  gs_effect_set_vec2(filter->dimension_param, &filter->dimension);

 if (filter->dimension_i_param)
  gs_effect_set_vec2(filter->dimension_i_param,
       &filter->dimension_i);

 if (filter->undistort_factor_param)
  gs_effect_set_float(filter->undistort_factor_param,
        (float)filter->undistort_factor);

 if (filter->sampling == OBS_SCALE_POINT)
  gs_effect_set_next_sampler(filter->image_param,
        filter->point_sampler);

 obs_source_process_filter_tech_end(filter->context, filter->effect,
        filter->cx_out, filter->cy_out,
        technique);

 UNUSED_PARAMETER(effect);
}
