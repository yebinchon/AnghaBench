
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t num; scalar_t__ array; } ;
struct TYPE_4__ {int * effect_dir; int * effect_path; TYPE_3__ techniques; TYPE_3__ params; } ;
typedef TYPE_1__ gs_effect_t ;


 int bfree (int *) ;
 int da_free (TYPE_3__) ;
 int effect_param_free (scalar_t__) ;
 int effect_technique_free (scalar_t__) ;

__attribute__((used)) static inline void effect_free(gs_effect_t *effect)
{
 size_t i;
 for (i = 0; i < effect->params.num; i++)
  effect_param_free(effect->params.array + i);
 for (i = 0; i < effect->techniques.num; i++)
  effect_technique_free(effect->techniques.array + i);

 da_free(effect->params);
 da_free(effect->techniques);

 bfree(effect->effect_path);
 bfree(effect->effect_dir);
 effect->effect_path = ((void*)0);
 effect->effect_dir = ((void*)0);
}
