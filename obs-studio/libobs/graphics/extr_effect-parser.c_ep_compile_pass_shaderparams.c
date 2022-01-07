
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pass_shaderparam {int sparam; int eparam; } ;
struct effect_parser {int effect; } ;
struct dstr {int array; } ;
struct darray {size_t num; } ;
typedef int gs_shader_t ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 void* darray_item (int,struct darray*,size_t) ;
 int darray_resize (int,struct darray*,size_t) ;
 int debug_param (int ,int ,size_t,char*) ;
 int gs_effect_get_param_by_name (int ,int ) ;
 int gs_shader_get_param_by_name (int *,int ) ;

__attribute__((used)) static bool ep_compile_pass_shaderparams(struct effect_parser *ep,
      struct darray *pass_params,
      struct darray *used_params,
      gs_shader_t *shader)
{
 size_t i;
 darray_resize(sizeof(struct pass_shaderparam), pass_params,
        used_params->num);

 for (i = 0; i < pass_params->num; i++) {
  struct dstr *param_name;
  struct pass_shaderparam *param;

  param_name = darray_item(sizeof(struct dstr), used_params, i);
  param = darray_item(sizeof(struct pass_shaderparam),
        pass_params, i);

  param->eparam = gs_effect_get_param_by_name(ep->effect,
           param_name->array);
  param->sparam =
   gs_shader_get_param_by_name(shader, param_name->array);





  if (!param->sparam) {
   blog(LOG_ERROR, "Effect shader parameter not found");
   return 0;
  }
 }

 return 1;
}
