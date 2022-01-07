
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int buffers; } ;
struct TYPE_4__ {scalar_t__ (* glCheckFramebufferStatus ) (scalar_t__) ;} ;
struct wined3d_gl_info {TYPE_1__ limits; TYPE_2__ fbo_ops; } ;
struct wined3d_context {int current_fbo; struct wined3d_gl_info* gl_info; } ;
typedef scalar_t__ GLenum ;


 int ERR (char*) ;
 int FIXME (char*,int ,scalar_t__) ;
 int FIXME_ON (int ) ;
 scalar_t__ GL_COLOR_ATTACHMENT0 ;
 scalar_t__ GL_DEPTH_ATTACHMENT ;
 scalar_t__ GL_FRAMEBUFFER_COMPLETE ;
 scalar_t__ GL_STENCIL_ATTACHMENT ;
 int TRACE (char*) ;
 int context_dump_fbo_attachment (struct wined3d_gl_info const*,scalar_t__,scalar_t__) ;
 int d3d ;
 int debug_fbostatus (scalar_t__) ;
 scalar_t__ stub1 (scalar_t__) ;

void context_check_fbo_status(const struct wined3d_context *context, GLenum target)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    GLenum status;

    if (!FIXME_ON(d3d))
        return;

    status = gl_info->fbo_ops.glCheckFramebufferStatus(target);
    if (status == GL_FRAMEBUFFER_COMPLETE)
    {
        TRACE("FBO complete.\n");
    }
    else
    {
        unsigned int i;

        FIXME("FBO status %s (%#x).\n", debug_fbostatus(status), status);

        if (!context->current_fbo)
        {
            ERR("FBO 0 is incomplete, driver bug?\n");
            return;
        }

        context_dump_fbo_attachment(gl_info, target, GL_DEPTH_ATTACHMENT);
        context_dump_fbo_attachment(gl_info, target, GL_STENCIL_ATTACHMENT);

        for (i = 0; i < gl_info->limits.buffers; ++i)
            context_dump_fbo_attachment(gl_info, target, GL_COLOR_ATTACHMENT0 + i);
    }
}
