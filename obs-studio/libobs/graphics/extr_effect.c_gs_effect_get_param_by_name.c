
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_effect_param {int name; } ;
typedef struct gs_effect_param gs_eparam_t ;
struct TYPE_4__ {size_t num; struct gs_effect_param* array; } ;
struct TYPE_5__ {TYPE_1__ params; } ;
typedef TYPE_2__ gs_effect_t ;


 scalar_t__ strcmp (int ,char const*) ;

gs_eparam_t *gs_effect_get_param_by_name(const gs_effect_t *effect,
      const char *name)
{
 if (!effect)
  return ((void*)0);

 struct gs_effect_param *params = effect->params.array;

 for (size_t i = 0; i < effect->params.num; i++) {
  struct gs_effect_param *param = params + i;

  if (strcmp(param->name, name) == 0)
   return param;
 }

 return ((void*)0);
}
