
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gs_texture {int gl_target; int texture; } ;
struct fbo_info {int fbo; } ;
typedef int GLint ;


 scalar_t__ GL_COLOR_ATTACHMENT0 ;
 int GL_READ_FRAMEBUFFER ;
 int GL_READ_FRAMEBUFFER_BINDING ;
 struct fbo_info* get_fbo (struct gs_texture*,int ,int ) ;
 int glCopyTexSubImage2D (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int glFramebufferTexture2D (int ,scalar_t__,int ,int ,int ) ;
 int glReadBuffer (scalar_t__) ;
 int gl_bind_framebuffer (int ,int ) ;
 int gl_bind_texture (int ,int ) ;
 int gl_get_integer_v (int ,int *) ;
 int gl_success (char*) ;

__attribute__((used)) static bool gl_copy_fbo(struct gs_texture *dst, uint32_t dst_x, uint32_t dst_y,
   struct gs_texture *src, uint32_t src_x, uint32_t src_y,
   uint32_t width, uint32_t height)
{
 struct fbo_info *fbo = get_fbo(src, width, height);
 GLint last_fbo;
 bool success = 0;

 if (!fbo)
  return 0;

 if (!gl_get_integer_v(GL_READ_FRAMEBUFFER_BINDING, &last_fbo))
  return 0;
 if (!gl_bind_framebuffer(GL_READ_FRAMEBUFFER, fbo->fbo))
  return 0;
 if (!gl_bind_texture(dst->gl_target, dst->texture))
  goto fail;

 glFramebufferTexture2D(GL_READ_FRAMEBUFFER, GL_COLOR_ATTACHMENT0 + 0,
          src->gl_target, src->texture, 0);
 if (!gl_success("glFrameBufferTexture2D"))
  goto fail;

 glReadBuffer(GL_COLOR_ATTACHMENT0 + 0);
 if (!gl_success("glReadBuffer"))
  goto fail;

 glCopyTexSubImage2D(dst->gl_target, 0, dst_x, dst_y, src_x, src_y,
       width, height);
 if (!gl_success("glCopyTexSubImage2D"))
  goto fail;

 success = 1;

fail:
 if (!gl_bind_texture(dst->gl_target, 0))
  success = 0;
 if (!gl_bind_framebuffer(GL_READ_FRAMEBUFFER, last_fbo))
  success = 0;

 return success;
}
