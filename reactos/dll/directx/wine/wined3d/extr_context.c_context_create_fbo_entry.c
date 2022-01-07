
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_rendertarget_info {TYPE_1__* resource; } ;
struct TYPE_4__ {int (* glGenFramebuffers ) (int,int *) ;} ;
struct wined3d_gl_info {TYPE_2__ fbo_ops; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct fbo_entry {int id; int rt_mask; int flags; int key; } ;
struct TYPE_3__ {int format_flags; } ;
typedef int DWORD ;


 int GL_COLOR_ATTACHMENT0 ;
 int TRACE (char*,int ) ;
 int WINED3DFMT_FLAG_DEPTH ;
 int WINED3DFMT_FLAG_STENCIL ;
 int WINED3D_FBO_ENTRY_FLAG_DEPTH ;
 int WINED3D_FBO_ENTRY_FLAG_STENCIL ;
 int checkGLcall (char*) ;
 int context_generate_fbo_key (struct wined3d_context const*,int *,struct wined3d_rendertarget_info const*,struct wined3d_rendertarget_info const*,int ,int ) ;
 int context_generate_rt_mask (int ) ;
 struct fbo_entry* heap_alloc (int) ;
 int stub1 (int,int *) ;

__attribute__((used)) static struct fbo_entry *context_create_fbo_entry(const struct wined3d_context *context,
        const struct wined3d_rendertarget_info *render_targets, const struct wined3d_rendertarget_info *depth_stencil,
        DWORD color_location, DWORD ds_location)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct fbo_entry *entry;

    entry = heap_alloc(sizeof(*entry));
    context_generate_fbo_key(context, &entry->key, render_targets, depth_stencil, color_location, ds_location);
    entry->flags = 0;
    if (depth_stencil->resource)
    {
        if (depth_stencil->resource->format_flags & WINED3DFMT_FLAG_DEPTH)
            entry->flags |= WINED3D_FBO_ENTRY_FLAG_DEPTH;
        if (depth_stencil->resource->format_flags & WINED3DFMT_FLAG_STENCIL)
            entry->flags |= WINED3D_FBO_ENTRY_FLAG_STENCIL;
    }
    entry->rt_mask = context_generate_rt_mask(GL_COLOR_ATTACHMENT0);
    gl_info->fbo_ops.glGenFramebuffers(1, &entry->id);
    checkGLcall("glGenFramebuffers()");
    TRACE("Created FBO %u.\n", entry->id);

    return entry;
}
