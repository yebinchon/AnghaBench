
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_shader_param {scalar_t__ type; int texture_id; } ;
struct TYPE_4__ {size_t num; struct gs_shader_param* array; } ;
struct gs_shader {TYPE_1__ params; } ;
struct TYPE_5__ {struct gs_shader* cur_pixel_shader; } ;
typedef TYPE_2__ gs_device_t ;


 scalar_t__ GS_SHADER_PARAM_TEXTURE ;

__attribute__((used)) static inline struct gs_shader_param *get_texture_param(gs_device_t *device,
       int unit)
{
 struct gs_shader *shader = device->cur_pixel_shader;
 size_t i;

 for (i = 0; i < shader->params.num; i++) {
  struct gs_shader_param *param = shader->params.array + i;
  if (param->type == GS_SHADER_PARAM_TEXTURE) {
   if (param->texture_id == unit)
    return param;
  }
 }

 return ((void*)0);
}
