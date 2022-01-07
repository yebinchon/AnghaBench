
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_rendertarget_info {int dummy; } ;
struct wined3d_fbo_entry_key {int * objects; scalar_t__ rb_namespace; } ;
struct wined3d_context {TYPE_1__* gl_info; } ;
struct TYPE_4__ {unsigned int buffers; } ;
struct TYPE_3__ {TYPE_2__ limits; } ;
typedef int DWORD ;


 unsigned int ARRAY_SIZE (int *) ;
 int context_set_fbo_key_for_render_target (struct wined3d_context const*,struct wined3d_fbo_entry_key*,unsigned int,struct wined3d_rendertarget_info const*,int ) ;
 int memset (int *,int ,unsigned int) ;

__attribute__((used)) static void context_generate_fbo_key(const struct wined3d_context *context,
        struct wined3d_fbo_entry_key *key, const struct wined3d_rendertarget_info *render_targets,
        const struct wined3d_rendertarget_info *depth_stencil, DWORD color_location, DWORD ds_location)
{
    unsigned int buffers = context->gl_info->limits.buffers;
    unsigned int i;

    key->rb_namespace = 0;
    context_set_fbo_key_for_render_target(context, key, 0, depth_stencil, ds_location);

    for (i = 0; i < buffers; ++i)
        context_set_fbo_key_for_render_target(context, key, i + 1, &render_targets[i], color_location);

    memset(&key->objects[buffers + 1], 0, (ARRAY_SIZE(key->objects) - buffers - 1) * sizeof(*key->objects));
}
