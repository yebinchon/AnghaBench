
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gs_effect_param {int changed; int * next_sampler; int cur_val; } ;
struct TYPE_6__ {size_t num; struct gs_effect_param* array; } ;
struct gs_effect {TYPE_2__ params; TYPE_1__* graphics; int * cur_technique; } ;
struct TYPE_7__ {struct gs_effect* effect; } ;
typedef TYPE_3__ gs_technique_t ;
struct TYPE_5__ {int * cur_effect; } ;


 int da_free (int ) ;
 int gs_load_pixelshader (int *) ;
 int gs_load_vertexshader (int *) ;

void gs_technique_end(gs_technique_t *tech)
{
 if (!tech)
  return;

 struct gs_effect *effect = tech->effect;
 struct gs_effect_param *params = effect->params.array;
 size_t i;

 gs_load_vertexshader(((void*)0));
 gs_load_pixelshader(((void*)0));

 tech->effect->cur_technique = ((void*)0);
 tech->effect->graphics->cur_effect = ((void*)0);

 for (i = 0; i < effect->params.num; i++) {
  struct gs_effect_param *param = params + i;

  da_free(param->cur_val);
  param->changed = 0;
  if (param->next_sampler)
   param->next_sampler = ((void*)0);
 }
}
