
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_effect_t ;
typedef enum obs_base_effect { ____Placeholder_obs_base_effect } obs_base_effect ;
struct TYPE_3__ {int * premultiplied_alpha_effect; int * bilinear_lowres_effect; int * area_effect; int * lanczos_effect; int * bicubic_effect; int * repeat_effect; int * solid_effect; int * opaque_effect; int * default_rect_effect; int * default_effect; } ;
struct TYPE_4__ {TYPE_1__ video; } ;
 TYPE_2__* obs ;

gs_effect_t *obs_get_base_effect(enum obs_base_effect effect)
{
 if (!obs)
  return ((void*)0);

 switch (effect) {
 case 134:
  return obs->video.default_effect;
 case 133:
  return obs->video.default_rect_effect;
 case 131:
  return obs->video.opaque_effect;
 case 128:
  return obs->video.solid_effect;
 case 129:
  return obs->video.repeat_effect;
 case 136:
  return obs->video.bicubic_effect;
 case 132:
  return obs->video.lanczos_effect;
 case 137:
  return obs->video.area_effect;
 case 135:
  return obs->video.bilinear_lowres_effect;
 case 130:
  return obs->video.premultiplied_alpha_effect;
 }

 return ((void*)0);
}
