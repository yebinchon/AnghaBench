
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int backbuffer_count; } ;
struct wined3d_swapchain {int render_to_fbo; TYPE_1__ desc; } ;
struct TYPE_4__ {scalar_t__ offscreen_rendering_mode; } ;


 int FALSE ;
 scalar_t__ ORM_FBO ;
 int TRACE (char*) ;
 int TRUE ;
 TYPE_2__ wined3d_settings ;

__attribute__((used)) static void swapchain_update_render_to_fbo(struct wined3d_swapchain *swapchain)
{
    if (wined3d_settings.offscreen_rendering_mode != ORM_FBO)
        return;

    if (!swapchain->desc.backbuffer_count)
    {
        TRACE("Single buffered rendering.\n");
        swapchain->render_to_fbo = FALSE;
        return;
    }

    TRACE("Rendering to FBO.\n");
    swapchain->render_to_fbo = TRUE;
}
