
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct gs_texture {scalar_t__ gl_target; int texture; } ;
struct gs_shader_param {size_t sampler_id; struct gs_texture* texture; } ;
struct gs_sampler_state {int dummy; } ;
typedef struct gs_texture gs_texture_t ;
struct TYPE_4__ {struct gs_sampler_state** cur_samplers; struct gs_texture** cur_textures; int cur_pixel_shader; } ;
typedef TYPE_1__ gs_device_t ;


 scalar_t__ GL_TEXTURE0 ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 struct gs_shader_param* get_texture_param (TYPE_1__*,int) ;
 int gl_active_texture (scalar_t__) ;
 int gl_bind_texture (scalar_t__,int ) ;
 int load_texture_sampler (struct gs_texture*,struct gs_sampler_state*) ;

void device_load_texture(gs_device_t *device, gs_texture_t *tex, int unit)
{
 struct gs_shader_param *param;
 struct gs_sampler_state *sampler;
 struct gs_texture *cur_tex = device->cur_textures[unit];


 if (!device->cur_pixel_shader)
  goto fail;

 if (cur_tex == tex)
  return;

 if (!gl_active_texture(GL_TEXTURE0 + unit))
  goto fail;



 if (cur_tex && (!tex || cur_tex->gl_target != tex->gl_target))
  gl_bind_texture(cur_tex->gl_target, 0);

 device->cur_textures[unit] = tex;
 param = get_texture_param(device, unit);
 if (!param)
  return;

 param->texture = tex;

 if (!tex)
  return;


 if (param->sampler_id != (size_t)-1)
  sampler = device->cur_samplers[param->sampler_id];
 else
  sampler = ((void*)0);

 if (!gl_bind_texture(tex->gl_target, tex->texture))
  goto fail;
 if (sampler && !load_texture_sampler(tex, sampler))
  goto fail;

 return;

fail:
 blog(LOG_ERROR, "device_load_texture (GL) failed");
}
