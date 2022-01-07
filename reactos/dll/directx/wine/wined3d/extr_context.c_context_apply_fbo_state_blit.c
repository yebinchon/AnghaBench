
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_surface {TYPE_1__* container; } ;
struct wined3d_context {TYPE_2__* blit_targets; } ;
struct TYPE_5__ {int layer_count; int sub_resource_idx; int * resource; } ;
struct TYPE_4__ {int resource; } ;
typedef int GLenum ;
typedef int DWORD ;


 int context_apply_fbo_state (struct wined3d_context*,int ,TYPE_2__*,struct wined3d_surface*,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int surface_get_sub_resource_idx (struct wined3d_surface*) ;

void context_apply_fbo_state_blit(struct wined3d_context *context, GLenum target,
        struct wined3d_surface *render_target, struct wined3d_surface *depth_stencil, DWORD location)
{
    memset(context->blit_targets, 0, sizeof(context->blit_targets));
    if (render_target)
    {
        context->blit_targets[0].resource = &render_target->container->resource;
        context->blit_targets[0].sub_resource_idx = surface_get_sub_resource_idx(render_target);
        context->blit_targets[0].layer_count = 1;
    }
    context_apply_fbo_state(context, target, context->blit_targets, depth_stencil, location, location);
}
