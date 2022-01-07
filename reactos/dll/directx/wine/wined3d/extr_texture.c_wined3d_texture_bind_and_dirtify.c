
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_texture {int dummy; } ;
struct wined3d_context {size_t active_texture; scalar_t__* rev_tex_unit_map; } ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 size_t ARRAY_SIZE (scalar_t__*) ;
 int STATE_COMPUTE_SHADER_RESOURCE_BINDING ;
 int STATE_GRAPHICS_SHADER_RESOURCE_BINDING ;
 int STATE_SAMPLER (scalar_t__) ;
 scalar_t__ WINED3D_UNMAPPED_STAGE ;
 int context_invalidate_compute_state (struct wined3d_context*,int ) ;
 int context_invalidate_state (struct wined3d_context*,int ) ;
 int wined3d_texture_bind (struct wined3d_texture*,struct wined3d_context*,int ) ;

void wined3d_texture_bind_and_dirtify(struct wined3d_texture *texture,
        struct wined3d_context *context, BOOL srgb)
{
    if (context->active_texture < ARRAY_SIZE(context->rev_tex_unit_map))
    {
        DWORD active_sampler = context->rev_tex_unit_map[context->active_texture];
        if (active_sampler != WINED3D_UNMAPPED_STAGE)
            context_invalidate_state(context, STATE_SAMPLER(active_sampler));
    }


    context_invalidate_compute_state(context, STATE_COMPUTE_SHADER_RESOURCE_BINDING);
    context_invalidate_state(context, STATE_GRAPHICS_SHADER_RESOURCE_BINDING);

    wined3d_texture_bind(texture, context, srgb);
}
