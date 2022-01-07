
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_shader_param {int name; } ;
typedef struct gs_shader_param gs_sparam_t ;
struct TYPE_4__ {size_t num; struct gs_shader_param* array; } ;
struct TYPE_5__ {TYPE_1__ params; } ;
typedef TYPE_2__ gs_shader_t ;


 scalar_t__ strcmp (int ,char const*) ;

gs_sparam_t *gs_shader_get_param_by_name(gs_shader_t *shader, const char *name)
{
 size_t i;
 for (i = 0; i < shader->params.num; i++) {
  struct gs_shader_param *param = shader->params.array + i;

  if (strcmp(param->name, name) == 0)
   return param;
 }

 return ((void*)0);
}
