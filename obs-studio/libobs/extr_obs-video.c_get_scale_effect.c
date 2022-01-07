
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct obs_core_video {int * default_effect; int * bicubic_effect; } ;
typedef int gs_effect_t ;


 int * get_scale_effect_internal (struct obs_core_video*) ;
 scalar_t__ resolution_close (struct obs_core_video*,int ,int ) ;

__attribute__((used)) static inline gs_effect_t *get_scale_effect(struct obs_core_video *video,
         uint32_t width, uint32_t height)
{
 if (resolution_close(video, width, height)) {
  return video->default_effect;
 } else {


  gs_effect_t *effect = get_scale_effect_internal(video);
  if (!effect)
   effect = !!video->bicubic_effect
      ? video->bicubic_effect
      : video->default_effect;
  return effect;
 }
}
