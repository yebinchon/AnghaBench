
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* glFramebufferRenderbuffer ) (int ,int ,int ,int ) ;} ;
struct wined3d_gl_info {TYPE_1__ fbo_ops; } ;
typedef int GLuint ;
typedef int GLenum ;
typedef int DWORD ;


 int GL_DEPTH_ATTACHMENT ;
 int GL_RENDERBUFFER ;
 int GL_STENCIL_ATTACHMENT ;
 int WINED3D_FBO_ENTRY_FLAG_DEPTH ;
 int WINED3D_FBO_ENTRY_FLAG_STENCIL ;
 int checkGLcall (char*) ;
 int stub1 (int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ,int ) ;

__attribute__((used)) static void context_attach_depth_stencil_rb(const struct wined3d_gl_info *gl_info,
        GLenum fbo_target, DWORD flags, GLuint rb)
{
    if (flags & WINED3D_FBO_ENTRY_FLAG_DEPTH)
    {
        gl_info->fbo_ops.glFramebufferRenderbuffer(fbo_target, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, rb);
        checkGLcall("glFramebufferRenderbuffer()");
    }

    if (flags & WINED3D_FBO_ENTRY_FLAG_STENCIL)
    {
        gl_info->fbo_ops.glFramebufferRenderbuffer(fbo_target, GL_STENCIL_ATTACHMENT, GL_RENDERBUFFER, rb);
        checkGLcall("glFramebufferRenderbuffer()");
    }
}
