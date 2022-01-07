
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_effect_t ;
struct TYPE_3__ {int * default_rect_effect; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 TYPE_2__* obs ;

gs_effect_t *obs_get_default_rect_effect(void)
{
 if (!obs)
  return ((void*)0);
 return obs->video.default_rect_effect;
}
