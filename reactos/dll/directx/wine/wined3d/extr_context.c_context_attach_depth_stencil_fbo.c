
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
struct wined3d_fbo_resource {int object; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef int GLenum ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int GL_DEPTH_ATTACHMENT ;
 int GL_STENCIL_ATTACHMENT ;
 int TRACE (char*,...) ;
 int WINED3D_FBO_ENTRY_FLAG_DEPTH ;
 int WINED3D_FBO_ENTRY_FLAG_STENCIL ;
 int context_attach_depth_stencil_rb (struct wined3d_gl_info const*,int ,int,int ) ;
 int context_attach_gl_texture_fbo (struct wined3d_context*,int ,int ,struct wined3d_fbo_resource const*) ;

__attribute__((used)) static void context_attach_depth_stencil_fbo(struct wined3d_context *context,
        GLenum fbo_target, const struct wined3d_fbo_resource *resource, BOOL rb_namespace,
        DWORD flags)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (resource->object)
    {
        TRACE("Attach depth stencil %u.\n", resource->object);

        if (rb_namespace)
        {
            context_attach_depth_stencil_rb(gl_info, fbo_target,
                    flags, resource->object);
        }
        else
        {
            if (flags & WINED3D_FBO_ENTRY_FLAG_DEPTH)
                context_attach_gl_texture_fbo(context, fbo_target, GL_DEPTH_ATTACHMENT, resource);

            if (flags & WINED3D_FBO_ENTRY_FLAG_STENCIL)
                context_attach_gl_texture_fbo(context, fbo_target, GL_STENCIL_ATTACHMENT, resource);
        }

        if (!(flags & WINED3D_FBO_ENTRY_FLAG_DEPTH))
            context_attach_gl_texture_fbo(context, fbo_target, GL_DEPTH_ATTACHMENT, ((void*)0));

        if (!(flags & WINED3D_FBO_ENTRY_FLAG_STENCIL))
            context_attach_gl_texture_fbo(context, fbo_target, GL_STENCIL_ATTACHMENT, ((void*)0));
    }
    else
    {
        TRACE("Attach depth stencil 0.\n");

        context_attach_gl_texture_fbo(context, fbo_target, GL_DEPTH_ATTACHMENT, ((void*)0));
        context_attach_gl_texture_fbo(context, fbo_target, GL_STENCIL_ATTACHMENT, ((void*)0));
    }
}
