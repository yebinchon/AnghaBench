
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fbo_info {TYPE_1__* cur_zstencil_buffer; } ;
struct TYPE_3__ {int attachment; int buffer; } ;
typedef TYPE_1__ gs_zstencil_t ;
typedef int GLuint ;
typedef int GLenum ;


 int GL_DEPTH_STENCIL_ATTACHMENT ;
 int GL_DRAW_FRAMEBUFFER ;
 int GL_RENDERBUFFER ;
 int glFramebufferRenderbuffer (int ,int ,int ,int ) ;
 int gl_success (char*) ;

__attribute__((used)) static bool attach_zstencil(struct fbo_info *fbo, gs_zstencil_t *zs)
{
 GLuint zsbuffer = 0;
 GLenum zs_attachment = GL_DEPTH_STENCIL_ATTACHMENT;

 if (fbo->cur_zstencil_buffer == zs)
  return 1;

 fbo->cur_zstencil_buffer = zs;

 if (zs) {
  zsbuffer = zs->buffer;
  zs_attachment = zs->attachment;
 }

 glFramebufferRenderbuffer(GL_DRAW_FRAMEBUFFER, zs_attachment,
      GL_RENDERBUFFER, zsbuffer);
 if (!gl_success("glFramebufferRenderbuffer"))
  return 0;

 return 1;
}
