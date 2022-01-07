
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct gs_effect_param* array; } ;
struct gs_effect_param {TYPE_1__ annotations; } ;
typedef struct gs_effect_param gs_eparam_t ;



gs_eparam_t *gs_param_get_annotation_by_idx(const gs_eparam_t *param,
         size_t annotation)
{
 if (!param)
  return ((void*)0);

 struct gs_effect_param *params = param->annotations.array;
 if (annotation > param->annotations.num)
  return ((void*)0);

 return params + annotation;
}
