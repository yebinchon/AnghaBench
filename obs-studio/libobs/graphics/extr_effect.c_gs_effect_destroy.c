
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cached; } ;
typedef TYPE_1__ gs_effect_t ;


 int gs_effect_actually_destroy (TYPE_1__*) ;

void gs_effect_destroy(gs_effect_t *effect)
{
 if (effect) {
  if (!effect->cached)
   gs_effect_actually_destroy(effect);
 }
}
