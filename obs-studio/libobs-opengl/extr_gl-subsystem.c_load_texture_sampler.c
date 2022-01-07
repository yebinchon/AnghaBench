
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int gl_target; TYPE_2__* cur_sampler; } ;
typedef TYPE_1__ gs_texture_t ;
struct TYPE_10__ {int max_anisotropy; int address_w; int address_v; int address_u; int mag_filter; int min_filter; } ;
typedef TYPE_2__ gs_samplerstate_t ;
typedef int GLint ;


 scalar_t__ GLAD_GL_EXT_texture_filter_anisotropic ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MAX_ANISOTROPY_EXT ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_R ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int apply_swizzle (TYPE_1__*) ;
 int gl_tex_param_i (int ,int ,int ) ;
 scalar_t__ gs_texture_is_rect (TYPE_1__*) ;
 int samplerstate_addref (TYPE_2__*) ;
 int samplerstate_release (TYPE_2__*) ;
 int strip_mipmap_filter (int *) ;

__attribute__((used)) static bool load_texture_sampler(gs_texture_t *tex, gs_samplerstate_t *ss)
{
 bool success = 1;
 GLint min_filter;

 if (tex->cur_sampler == ss)
  return 1;

 if (tex->cur_sampler)
  samplerstate_release(tex->cur_sampler);
 tex->cur_sampler = ss;
 if (!ss)
  return 1;

 samplerstate_addref(ss);

 min_filter = ss->min_filter;
 if (gs_texture_is_rect(tex))
  strip_mipmap_filter(&min_filter);

 if (!gl_tex_param_i(tex->gl_target, GL_TEXTURE_MIN_FILTER, min_filter))
  success = 0;
 if (!gl_tex_param_i(tex->gl_target, GL_TEXTURE_MAG_FILTER,
       ss->mag_filter))
  success = 0;
 if (!gl_tex_param_i(tex->gl_target, GL_TEXTURE_WRAP_S, ss->address_u))
  success = 0;
 if (!gl_tex_param_i(tex->gl_target, GL_TEXTURE_WRAP_T, ss->address_v))
  success = 0;
 if (!gl_tex_param_i(tex->gl_target, GL_TEXTURE_WRAP_R, ss->address_w))
  success = 0;
 if (GLAD_GL_EXT_texture_filter_anisotropic) {
  if (!gl_tex_param_i(tex->gl_target,
        GL_TEXTURE_MAX_ANISOTROPY_EXT,
        ss->max_anisotropy))
   success = 0;
 }

 apply_swizzle(tex);

 return success;
}
