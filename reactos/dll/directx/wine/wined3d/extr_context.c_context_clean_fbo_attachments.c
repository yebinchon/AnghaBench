
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* glFramebufferTexture2D ) (int ,scalar_t__,int ,int ,int ) ;} ;
struct TYPE_3__ {unsigned int buffers; } ;
struct wined3d_gl_info {TYPE_2__ fbo_ops; TYPE_1__ limits; } ;
typedef int GLenum ;


 scalar_t__ GL_COLOR_ATTACHMENT0 ;
 scalar_t__ GL_DEPTH_ATTACHMENT ;
 scalar_t__ GL_STENCIL_ATTACHMENT ;
 int GL_TEXTURE_2D ;
 int checkGLcall (char*) ;
 int stub1 (int ,scalar_t__,int ,int ,int ) ;
 int stub2 (int ,scalar_t__,int ,int ,int ) ;
 int stub3 (int ,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void context_clean_fbo_attachments(const struct wined3d_gl_info *gl_info, GLenum target)
{
    unsigned int i;

    for (i = 0; i < gl_info->limits.buffers; ++i)
    {
        gl_info->fbo_ops.glFramebufferTexture2D(target, GL_COLOR_ATTACHMENT0 + i, GL_TEXTURE_2D, 0, 0);
        checkGLcall("glFramebufferTexture2D()");
    }
    gl_info->fbo_ops.glFramebufferTexture2D(target, GL_DEPTH_ATTACHMENT, GL_TEXTURE_2D, 0, 0);
    checkGLcall("glFramebufferTexture2D()");

    gl_info->fbo_ops.glFramebufferTexture2D(target, GL_STENCIL_ATTACHMENT, GL_TEXTURE_2D, 0, 0);
    checkGLcall("glFramebufferTexture2D()");
}
