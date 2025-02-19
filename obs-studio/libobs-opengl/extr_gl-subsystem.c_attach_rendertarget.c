
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fbo_info {TYPE_1__* cur_render_target; } ;
struct TYPE_3__ {scalar_t__ type; int texture; } ;
typedef TYPE_1__ gs_texture_t ;


 int GL_COLOR_ATTACHMENT0 ;
 int GL_DRAW_FRAMEBUFFER ;
 scalar_t__ GL_TEXTURE_2D ;
 scalar_t__ GL_TEXTURE_CUBE_MAP_POSITIVE_X ;
 scalar_t__ GS_TEXTURE_2D ;
 scalar_t__ GS_TEXTURE_CUBE ;
 int glFramebufferTexture2D (int ,int ,scalar_t__,int ,int ) ;
 int gl_success (char*) ;

__attribute__((used)) static bool attach_rendertarget(struct fbo_info *fbo, gs_texture_t *tex,
    int side)
{
 if (fbo->cur_render_target == tex)
  return 1;

 fbo->cur_render_target = tex;

 if (tex->type == GS_TEXTURE_2D) {
  glFramebufferTexture2D(GL_DRAW_FRAMEBUFFER,
           GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D,
           tex->texture, 0);

 } else if (tex->type == GS_TEXTURE_CUBE) {
  glFramebufferTexture2D(GL_DRAW_FRAMEBUFFER,
           GL_COLOR_ATTACHMENT0,
           GL_TEXTURE_CUBE_MAP_POSITIVE_X + side,
           tex->texture, 0);

 } else {
  return 0;
 }

 return gl_success("glFramebufferTexture2D");
}
