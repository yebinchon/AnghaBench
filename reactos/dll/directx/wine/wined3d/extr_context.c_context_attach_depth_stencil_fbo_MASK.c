#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_gl_info {int dummy; } ;
struct wined3d_fbo_resource {int /*<<< orphan*/  object; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  GL_DEPTH_ATTACHMENT ; 
 int /*<<< orphan*/  GL_STENCIL_ATTACHMENT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int WINED3D_FBO_ENTRY_FLAG_DEPTH ; 
 int WINED3D_FBO_ENTRY_FLAG_STENCIL ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_gl_info const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wined3d_fbo_resource const*) ; 

__attribute__((used)) static void FUNC3(struct wined3d_context *context,
        GLenum fbo_target, const struct wined3d_fbo_resource *resource, BOOL rb_namespace,
        DWORD flags)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (resource->object)
    {
        FUNC0("Attach depth stencil %u.\n", resource->object);

        if (rb_namespace)
        {
            FUNC1(gl_info, fbo_target,
                    flags, resource->object);
        }
        else
        {
            if (flags & WINED3D_FBO_ENTRY_FLAG_DEPTH)
                FUNC2(context, fbo_target, GL_DEPTH_ATTACHMENT, resource);

            if (flags & WINED3D_FBO_ENTRY_FLAG_STENCIL)
                FUNC2(context, fbo_target, GL_STENCIL_ATTACHMENT, resource);
        }

        if (!(flags & WINED3D_FBO_ENTRY_FLAG_DEPTH))
            FUNC2(context, fbo_target, GL_DEPTH_ATTACHMENT, NULL);

        if (!(flags & WINED3D_FBO_ENTRY_FLAG_STENCIL))
            FUNC2(context, fbo_target, GL_STENCIL_ATTACHMENT, NULL);
    }
    else
    {
        FUNC0("Attach depth stencil 0.\n");

        FUNC2(context, fbo_target, GL_DEPTH_ATTACHMENT, NULL);
        FUNC2(context, fbo_target, GL_STENCIL_ATTACHMENT, NULL);
    }
}