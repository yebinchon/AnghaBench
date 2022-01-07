
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_core_video {int output_width; int base_width; int output_height; int base_height; int scale_type; int * bicubic_effect; int * area_effect; int * lanczos_effect; int * default_effect; int * bilinear_lowres_effect; } ;
typedef int gs_effect_t ;







__attribute__((used)) static inline gs_effect_t *
get_scale_effect_internal(struct obs_core_video *video)
{



 if (video->output_width < (video->base_width / 2) &&
     video->output_height < (video->base_height / 2)) {
  return video->bilinear_lowres_effect;
 }

 switch (video->scale_type) {
 case 129:
  return video->default_effect;
 case 128:
  return video->lanczos_effect;
 case 131:
  return video->area_effect;
 case 130:
 default:;
 }

 return video->bicubic_effect;
}
