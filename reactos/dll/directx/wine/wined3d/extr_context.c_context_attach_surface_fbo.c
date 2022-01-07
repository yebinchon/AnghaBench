
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* glFramebufferRenderbuffer ) (int ,scalar_t__,int ,scalar_t__) ;} ;
struct wined3d_gl_info {TYPE_1__ fbo_ops; } ;
struct wined3d_fbo_resource {scalar_t__ object; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef int GLenum ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ GL_COLOR_ATTACHMENT0 ;
 int GL_RENDERBUFFER ;
 int TRACE (char*,scalar_t__,scalar_t__) ;
 int checkGLcall (char*) ;
 int context_attach_gl_texture_fbo (struct wined3d_context*,int ,scalar_t__,struct wined3d_fbo_resource const*) ;
 int stub1 (int ,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void context_attach_surface_fbo(struct wined3d_context *context,
        GLenum fbo_target, DWORD idx, const struct wined3d_fbo_resource *resource, BOOL rb_namespace)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    TRACE("Attach GL object %u to %u.\n", resource->object, idx);

    if (resource->object)
    {
        if (rb_namespace)
        {
            gl_info->fbo_ops.glFramebufferRenderbuffer(fbo_target, GL_COLOR_ATTACHMENT0 + idx,
                    GL_RENDERBUFFER, resource->object);
            checkGLcall("glFramebufferRenderbuffer()");
        }
        else
        {
            context_attach_gl_texture_fbo(context, fbo_target, GL_COLOR_ATTACHMENT0 + idx, resource);
        }
    }
    else
    {
        context_attach_gl_texture_fbo(context, fbo_target, GL_COLOR_ATTACHMENT0 + idx, ((void*)0));
    }
}
