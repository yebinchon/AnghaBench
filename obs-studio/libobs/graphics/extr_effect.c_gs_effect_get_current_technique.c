
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_technique_t ;
struct TYPE_3__ {int * cur_technique; } ;
typedef TYPE_1__ gs_effect_t ;



gs_technique_t *gs_effect_get_current_technique(const gs_effect_t *effect)
{
 if (!effect)
  return ((void*)0);

 return effect->cur_technique;
}
