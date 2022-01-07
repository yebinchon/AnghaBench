
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct gs_effect_param* array; } ;
struct gs_effect_param {int name; TYPE_1__ annotations; } ;
typedef struct gs_effect_param gs_eparam_t ;


 scalar_t__ strcmp (int ,char const*) ;

gs_eparam_t *gs_param_get_annotation_by_name(const gs_eparam_t *param,
          const char *name)
{
 if (!param)
  return ((void*)0);
 struct gs_effect_param *params = param->annotations.array;

 for (size_t i = 0; i < param->annotations.num; i++) {
  struct gs_effect_param *g_param = params + i;
  if (strcmp(g_param->name, name) == 0)
   return g_param;
 }
 return ((void*)0);
}
