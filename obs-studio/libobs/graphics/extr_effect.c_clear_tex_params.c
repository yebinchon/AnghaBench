
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pass_shaderparam {int sparam; } ;
struct gs_shader_param_info {scalar_t__ type; } ;
struct darray {size_t num; struct pass_shaderparam* array; } ;


 scalar_t__ GS_SHADER_PARAM_TEXTURE ;
 int gs_shader_get_param_info (int ,struct gs_shader_param_info*) ;
 int gs_shader_set_texture (int ,int *) ;

__attribute__((used)) static inline void clear_tex_params(struct darray *in_params)
{
 struct pass_shaderparam *params = in_params->array;

 for (size_t i = 0; i < in_params->num; i++) {
  struct pass_shaderparam *param = params + i;
  struct gs_shader_param_info info;

  gs_shader_get_param_info(param->sparam, &info);
  if (info.type == GS_SHADER_PARAM_TEXTURE)
   gs_shader_set_texture(param->sparam, ((void*)0));
 }
}
