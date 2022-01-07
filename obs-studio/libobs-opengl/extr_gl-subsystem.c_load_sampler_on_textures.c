
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct gs_shader_param {scalar_t__ type; scalar_t__ sampler_id; scalar_t__ texture; scalar_t__ texture_id; } ;
struct TYPE_4__ {size_t num; struct gs_shader_param* array; } ;
struct gs_shader {TYPE_1__ params; } ;
typedef int gs_samplerstate_t ;
struct TYPE_5__ {struct gs_shader* cur_pixel_shader; } ;
typedef TYPE_2__ gs_device_t ;


 scalar_t__ GL_TEXTURE0 ;
 scalar_t__ GS_SHADER_PARAM_TEXTURE ;
 int gl_active_texture (scalar_t__) ;
 int load_texture_sampler (scalar_t__,int *) ;

__attribute__((used)) static bool load_sampler_on_textures(gs_device_t *device, gs_samplerstate_t *ss,
         int sampler_unit)
{
 struct gs_shader *shader = device->cur_pixel_shader;
 size_t i;

 for (i = 0; i < shader->params.num; i++) {
  struct gs_shader_param *param = shader->params.array + i;

  if (param->type == GS_SHADER_PARAM_TEXTURE &&
      param->sampler_id == (uint32_t)sampler_unit &&
      param->texture) {
   if (!gl_active_texture(GL_TEXTURE0 + param->texture_id))
    return 0;
   if (!load_texture_sampler(param->texture, ss))
    return 0;
  }
 }

 return 1;
}
