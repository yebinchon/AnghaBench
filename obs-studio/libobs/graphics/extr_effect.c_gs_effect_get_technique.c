
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_effect_technique {int name; } ;
typedef struct gs_effect_technique gs_technique_t ;
struct TYPE_4__ {size_t num; struct gs_effect_technique* array; } ;
struct TYPE_5__ {TYPE_1__ techniques; } ;
typedef TYPE_2__ gs_effect_t ;


 scalar_t__ strcmp (int ,char const*) ;

gs_technique_t *gs_effect_get_technique(const gs_effect_t *effect,
     const char *name)
{
 if (!effect)
  return ((void*)0);

 for (size_t i = 0; i < effect->techniques.num; i++) {
  struct gs_effect_technique *tech = effect->techniques.array + i;
  if (strcmp(tech->name, name) == 0)
   return tech;
 }

 return ((void*)0);
}
