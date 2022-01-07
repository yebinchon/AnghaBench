
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_swapchain {int render_to_fbo; int ds_format; } ;
struct wined3d_rendertarget_view {int format; } ;
struct TYPE_3__ {int sub_resource_idx; TYPE_2__* texture; } ;
struct wined3d_context {TYPE_1__ current_rt; scalar_t__ render_offscreen; } ;
struct TYPE_4__ {struct wined3d_swapchain* swapchain; } ;


 int ERR (char*) ;
 int TRUE ;
 int WARN (char*) ;
 int WINED3D_LOCATION_TEXTURE_RGB ;
 int context_set_render_offscreen (struct wined3d_context*,int ) ;
 scalar_t__ match_depth_stencil_format (int ,int ) ;
 int swapchain_update_draw_bindings (struct wined3d_swapchain*) ;
 int wined3d_texture_load_location (TYPE_2__*,int ,struct wined3d_context*,int ) ;

__attribute__((used)) static void context_validate_onscreen_formats(struct wined3d_context *context,
        const struct wined3d_rendertarget_view *depth_stencil)
{

    struct wined3d_swapchain *swapchain = context->current_rt.texture->swapchain;

    if (context->render_offscreen || !depth_stencil) return;
    if (match_depth_stencil_format(swapchain->ds_format, depth_stencil->format)) return;




    WARN("Depth stencil format is not supported by WGL, rendering the backbuffer in an FBO\n");


    if (!(wined3d_texture_load_location(context->current_rt.texture, context->current_rt.sub_resource_idx,
            context, WINED3D_LOCATION_TEXTURE_RGB)))
        ERR("Failed to load location.\n");
    swapchain->render_to_fbo = TRUE;
    swapchain_update_draw_bindings(swapchain);
    context_set_render_offscreen(context, TRUE);
}
