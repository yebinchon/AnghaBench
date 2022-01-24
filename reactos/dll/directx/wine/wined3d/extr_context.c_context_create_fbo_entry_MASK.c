#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_rendertarget_info {TYPE_1__* resource; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* glGenFramebuffers ) (int,int /*<<< orphan*/ *) ;} ;
struct wined3d_gl_info {TYPE_2__ fbo_ops; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct fbo_entry {int /*<<< orphan*/  id; int /*<<< orphan*/  rt_mask; int /*<<< orphan*/  flags; int /*<<< orphan*/  key; } ;
struct TYPE_3__ {int format_flags; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int WINED3DFMT_FLAG_DEPTH ; 
 int WINED3DFMT_FLAG_STENCIL ; 
 int /*<<< orphan*/  WINED3D_FBO_ENTRY_FLAG_DEPTH ; 
 int /*<<< orphan*/  WINED3D_FBO_ENTRY_FLAG_STENCIL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context const*,int /*<<< orphan*/ *,struct wined3d_rendertarget_info const*,struct wined3d_rendertarget_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct fbo_entry* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fbo_entry *FUNC6(const struct wined3d_context *context,
        const struct wined3d_rendertarget_info *render_targets, const struct wined3d_rendertarget_info *depth_stencil,
        DWORD color_location, DWORD ds_location)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct fbo_entry *entry;

    entry = FUNC4(sizeof(*entry));
    FUNC2(context, &entry->key, render_targets, depth_stencil, color_location, ds_location);
    entry->flags = 0;
    if (depth_stencil->resource)
    {
        if (depth_stencil->resource->format_flags & WINED3DFMT_FLAG_DEPTH)
            entry->flags |= WINED3D_FBO_ENTRY_FLAG_DEPTH;
        if (depth_stencil->resource->format_flags & WINED3DFMT_FLAG_STENCIL)
            entry->flags |= WINED3D_FBO_ENTRY_FLAG_STENCIL;
    }
    entry->rt_mask = FUNC3(GL_COLOR_ATTACHMENT0);
    gl_info->fbo_ops.glGenFramebuffers(1, &entry->id);
    FUNC1("glGenFramebuffers()");
    FUNC0("Created FBO %u.\n", entry->id);

    return entry;
}