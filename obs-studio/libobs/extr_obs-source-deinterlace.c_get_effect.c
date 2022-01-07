
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_effect_t ;
typedef enum obs_deinterlace_mode { ____Placeholder_obs_deinterlace_mode } obs_deinterlace_mode ;
struct TYPE_3__ {int deinterlace_yadif_2x_effect; int deinterlace_yadif_effect; int deinterlace_linear_2x_effect; int deinterlace_linear_effect; int deinterlace_blend_2x_effect; int deinterlace_blend_effect; int deinterlace_discard_2x_effect; int deinterlace_discard_effect; } ;
struct TYPE_4__ {TYPE_1__ video; } ;
 TYPE_2__* obs ;
 int * obs_load_effect (int *,char*) ;

__attribute__((used)) static inline gs_effect_t *get_effect(enum obs_deinterlace_mode mode)
{
 switch (mode) {
 case 134:
  return ((void*)0);
 case 133:
  return obs_load_effect(&obs->video.deinterlace_discard_effect,
           "deinterlace_discard.effect");
 case 130:
  return obs_load_effect(
   &obs->video.deinterlace_discard_2x_effect,
   "deinterlace_discard_2x.effect");
 case 136:
  return obs_load_effect(&obs->video.deinterlace_blend_effect,
           "deinterlace_blend.effect");
 case 135:
  return obs_load_effect(&obs->video.deinterlace_blend_2x_effect,
           "deinterlace_blend_2x.effect");
 case 132:
  return obs_load_effect(&obs->video.deinterlace_linear_effect,
           "deinterlace_linear.effect");
 case 131:
  return obs_load_effect(&obs->video.deinterlace_linear_2x_effect,
           "deinterlace_linear_2x.effect");
 case 129:
  return obs_load_effect(&obs->video.deinterlace_yadif_effect,
           "deinterlace_yadif.effect");
 case 128:
  return obs_load_effect(&obs->video.deinterlace_yadif_2x_effect,
           "deinterlace_yadif_2x.effect");
 }

 return ((void*)0);
}
