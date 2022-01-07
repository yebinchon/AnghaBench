
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pass_shaderparam {int * sparam; struct gs_effect_param* eparam; } ;
struct TYPE_3__ {int num; int array; } ;
struct TYPE_4__ {scalar_t__ num; } ;
struct gs_effect_param {TYPE_1__ cur_val; TYPE_2__ default_val; int changed; scalar_t__ next_sampler; } ;
struct darray {size_t num; struct pass_shaderparam* array; } ;
typedef int gs_sparam_t ;


 int da_copy (TYPE_1__,TYPE_2__) ;
 int gs_shader_set_next_sampler (int *,scalar_t__) ;
 int gs_shader_set_val (int *,int ,int ) ;

__attribute__((used)) static void upload_shader_params(struct darray *pass_params, bool changed_only)
{
 struct pass_shaderparam *params = pass_params->array;
 size_t i;

 for (i = 0; i < pass_params->num; i++) {
  struct pass_shaderparam *param = params + i;
  struct gs_effect_param *eparam = param->eparam;
  gs_sparam_t *sparam = param->sparam;

  if (eparam->next_sampler)
   gs_shader_set_next_sampler(sparam,
         eparam->next_sampler);

  if (changed_only && !eparam->changed)
   continue;

  if (!eparam->cur_val.num) {
   if (eparam->default_val.num)
    da_copy(eparam->cur_val, eparam->default_val);
   else
    continue;
  }

  gs_shader_set_val(sparam, eparam->cur_val.array,
      eparam->cur_val.num);
 }
}
