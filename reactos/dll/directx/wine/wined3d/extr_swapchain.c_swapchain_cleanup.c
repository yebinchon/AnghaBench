
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t backbuffer_count; int flags; scalar_t__ auto_restore_display_mode; int windowed; } ;
struct wined3d_swapchain {int backup_wnd; scalar_t__ backup_dc; TYPE_4__* device; int original_window_rect; int device_window; TYPE_3__ desc; int original_mode; int ** back_buffers; int * front_buffer; int orig_gamma; } ;
typedef size_t UINT ;
struct TYPE_12__ {TYPE_1__* ops; } ;
struct TYPE_11__ {TYPE_2__* adapter; int wined3d; TYPE_6__* cs; } ;
struct TYPE_9__ {int ordinal; } ;
struct TYPE_8__ {int (* finish ) (TYPE_6__*,int ) ;} ;
typedef int HRESULT ;


 int DestroyWindow (int ) ;
 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int TRACE (char*,struct wined3d_swapchain*,...) ;
 int WARN (char*,size_t,...) ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 int WINED3D_SWAPCHAIN_RESTORE_WINDOW_RECT ;
 int heap_free (int **) ;
 int stub1 (TYPE_6__*,int ) ;
 int wined3d_cs_destroy_object (TYPE_6__*,int ,struct wined3d_swapchain*) ;
 int wined3d_device_release_focus_window (TYPE_4__*) ;
 int wined3d_device_restore_fullscreen_window (TYPE_4__*,int ,int *) ;
 int wined3d_release_dc (int ,scalar_t__) ;
 int wined3d_set_adapter_display_mode (int ,int ,int *) ;
 int wined3d_swapchain_destroy_object ;
 int wined3d_swapchain_set_gamma_ramp (struct wined3d_swapchain*,int ,int *) ;
 scalar_t__ wined3d_texture_decref (int *) ;
 int wined3d_texture_set_swapchain (int *,int *) ;

__attribute__((used)) static void swapchain_cleanup(struct wined3d_swapchain *swapchain)
{
    HRESULT hr;
    UINT i;

    TRACE("Destroying swapchain %p.\n", swapchain);

    wined3d_swapchain_set_gamma_ramp(swapchain, 0, &swapchain->orig_gamma);



    if (swapchain->front_buffer)
    {
        wined3d_texture_set_swapchain(swapchain->front_buffer, ((void*)0));
        if (wined3d_texture_decref(swapchain->front_buffer))
            WARN("Something's still holding the front buffer (%p).\n", swapchain->front_buffer);
        swapchain->front_buffer = ((void*)0);
    }

    if (swapchain->back_buffers)
    {
        i = swapchain->desc.backbuffer_count;

        while (i--)
        {
            wined3d_texture_set_swapchain(swapchain->back_buffers[i], ((void*)0));
            if (wined3d_texture_decref(swapchain->back_buffers[i]))
                WARN("Something's still holding back buffer %u (%p).\n", i, swapchain->back_buffers[i]);
        }
        heap_free(swapchain->back_buffers);
        swapchain->back_buffers = ((void*)0);
    }

    wined3d_cs_destroy_object(swapchain->device->cs, wined3d_swapchain_destroy_object, swapchain);
    swapchain->device->cs->ops->finish(swapchain->device->cs, WINED3D_CS_QUEUE_DEFAULT);







    if (!swapchain->desc.windowed && swapchain->desc.auto_restore_display_mode)
    {
        if (FAILED(hr = wined3d_set_adapter_display_mode(swapchain->device->wined3d,
                swapchain->device->adapter->ordinal, &swapchain->original_mode)))
            ERR("Failed to restore display mode, hr %#x.\n", hr);

        if (swapchain->desc.flags & WINED3D_SWAPCHAIN_RESTORE_WINDOW_RECT)
        {
            wined3d_device_restore_fullscreen_window(swapchain->device, swapchain->device_window,
                    &swapchain->original_window_rect);
            wined3d_device_release_focus_window(swapchain->device);
        }
    }

    if (swapchain->backup_dc)
    {
        TRACE("Destroying backup wined3d window %p, dc %p.\n", swapchain->backup_wnd, swapchain->backup_dc);

        wined3d_release_dc(swapchain->backup_wnd, swapchain->backup_dc);
        DestroyWindow(swapchain->backup_wnd);
    }
}
