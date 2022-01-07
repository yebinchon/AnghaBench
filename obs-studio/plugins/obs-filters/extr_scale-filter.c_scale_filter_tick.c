
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scale_filter_data {int cx_in; int cy_in; int cx_out; int cy_out; int target_valid; double undistort_factor; int upscale; int sampling; int * undistort_factor_param; int effect; int * dimension_i_param; int * dimension_param; void* image_param; scalar_t__ undistort; int dimension_i; int dimension; scalar_t__ aspect_ratio_only; int valid; int context; scalar_t__ base_canvas_resolution; } ;
struct obs_video_info {int base_width; int base_height; } ;
typedef int obs_source_t ;
typedef enum obs_base_effect { ____Placeholder_obs_base_effect } obs_base_effect ;


 scalar_t__ EPSILON ;
 int OBS_EFFECT_AREA ;
 int OBS_EFFECT_BICUBIC ;
 int OBS_EFFECT_BILINEAR_LOWRES ;
 int OBS_EFFECT_DEFAULT ;
 int OBS_EFFECT_LANCZOS ;





 int UNUSED_PARAMETER (float) ;
 scalar_t__ fabs (double) ;
 void* gs_effect_get_param_by_name (int ,char*) ;
 int * obs_filter_get_target (int ) ;
 int obs_get_base_effect (int) ;
 int obs_get_video_info (struct obs_video_info*) ;
 int obs_source_get_base_height (int *) ;
 int obs_source_get_base_width (int *) ;
 int vec2_set (int *,float,float) ;

__attribute__((used)) static void scale_filter_tick(void *data, float seconds)
{
 struct scale_filter_data *filter = data;
 enum obs_base_effect type;
 obs_source_t *target;
 bool lower_than_2x;
 double cx_f;
 double cy_f;
 int cx;
 int cy;

 if (filter->base_canvas_resolution) {
  struct obs_video_info ovi;
  obs_get_video_info(&ovi);
  filter->cx_in = ovi.base_width;
  filter->cy_in = ovi.base_height;
 }

 target = obs_filter_get_target(filter->context);
 filter->cx_out = 0;
 filter->cy_out = 0;

 filter->target_valid = !!target;
 if (!filter->target_valid)
  return;

 cx = obs_source_get_base_width(target);
 cy = obs_source_get_base_height(target);

 if (!cx || !cy) {
  filter->target_valid = 0;
  return;
 }

 filter->cx_out = cx;
 filter->cy_out = cy;

 if (!filter->valid)
  return;



 cx_f = (double)cx;
 cy_f = (double)cy;

 double old_aspect = cx_f / cy_f;
 double new_aspect = (double)filter->cx_in / (double)filter->cy_in;

 if (filter->aspect_ratio_only) {
  if (fabs(old_aspect - new_aspect) <= EPSILON) {
   filter->target_valid = 0;
   return;
  } else {
   if (new_aspect > old_aspect) {
    filter->cx_out = (int)(cy_f * new_aspect);
    filter->cy_out = cy;
   } else {
    filter->cx_out = cx;
    filter->cy_out = (int)(cx_f / new_aspect);
   }
  }
 } else {
  filter->cx_out = filter->cx_in;
  filter->cy_out = filter->cy_in;
 }

 vec2_set(&filter->dimension, (float)cx, (float)cy);
 vec2_set(&filter->dimension_i, 1.0f / (float)cx, 1.0f / (float)cy);

 if (filter->undistort) {
  filter->undistort_factor = new_aspect / old_aspect;
 } else {
  filter->undistort_factor = 1.0;
 }

 filter->upscale = 0;



 lower_than_2x = filter->cx_out < cx / 2 || filter->cy_out < cy / 2;

 if (lower_than_2x && filter->sampling != 128) {
  type = OBS_EFFECT_BILINEAR_LOWRES;
 } else {
  switch (filter->sampling) {
  default:
  case 128:
  case 130:
   type = OBS_EFFECT_DEFAULT;
   break;
  case 131:
   type = OBS_EFFECT_BICUBIC;
   break;
  case 129:
   type = OBS_EFFECT_LANCZOS;
   break;
  case 132:
   type = OBS_EFFECT_AREA;
   if ((filter->cx_out >= cx) && (filter->cy_out >= cy))
    filter->upscale = 1;
   break;
  }
 }

 filter->effect = obs_get_base_effect(type);
 filter->image_param =
  gs_effect_get_param_by_name(filter->effect, "image");

 if (type != OBS_EFFECT_DEFAULT) {
  filter->dimension_param = gs_effect_get_param_by_name(
   filter->effect, "base_dimension");
  filter->dimension_i_param = gs_effect_get_param_by_name(
   filter->effect, "base_dimension_i");
 } else {
  filter->dimension_param = ((void*)0);
  filter->dimension_i_param = ((void*)0);
 }

 if (type == OBS_EFFECT_BICUBIC || type == OBS_EFFECT_LANCZOS) {
  filter->undistort_factor_param = gs_effect_get_param_by_name(
   filter->effect, "undistort_factor");
 } else {
  filter->undistort_factor_param = ((void*)0);
 }

 UNUSED_PARAMETER(seconds);
}
