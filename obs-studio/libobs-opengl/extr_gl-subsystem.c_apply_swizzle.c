
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_texture {scalar_t__ format; int gl_target; } ;


 int GL_ONE ;
 int GL_RED ;
 int GL_TEXTURE_SWIZZLE_A ;
 int GL_TEXTURE_SWIZZLE_B ;
 int GL_TEXTURE_SWIZZLE_G ;
 int GL_TEXTURE_SWIZZLE_R ;
 scalar_t__ GS_A8 ;
 int gl_tex_param_i (int ,int ,int ) ;

__attribute__((used)) static inline void apply_swizzle(struct gs_texture *tex)
{
 if (tex->format == GS_A8) {
  gl_tex_param_i(tex->gl_target, GL_TEXTURE_SWIZZLE_R, GL_ONE);
  gl_tex_param_i(tex->gl_target, GL_TEXTURE_SWIZZLE_G, GL_ONE);
  gl_tex_param_i(tex->gl_target, GL_TEXTURE_SWIZZLE_B, GL_ONE);
  gl_tex_param_i(tex->gl_target, GL_TEXTURE_SWIZZLE_A, GL_RED);
 }
}
