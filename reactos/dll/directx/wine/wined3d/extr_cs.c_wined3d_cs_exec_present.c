
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ swap_interval; unsigned int backbuffer_count; } ;
struct wined3d_swapchain {TYPE_4__** back_buffers; TYPE_3__ desc; TYPE_2__* front_buffer; TYPE_1__* swapchain_ops; } ;
struct wined3d_cs_present {scalar_t__ swap_interval; int flags; int dst_rect; int src_rect; int dst_window_override; struct wined3d_swapchain* swapchain; } ;
struct wined3d_cs {int pending_presents; } ;
struct TYPE_8__ {int resource; } ;
struct TYPE_6__ {int resource; } ;
struct TYPE_5__ {int (* swapchain_present ) (struct wined3d_swapchain*,int *,int *,int ) ;} ;


 int InterlockedDecrement (int *) ;
 int stub1 (struct wined3d_swapchain*,int *,int *,int ) ;
 int swapchain_update_swap_interval (struct wined3d_swapchain*) ;
 int wined3d_resource_release (int *) ;
 int wined3d_swapchain_set_window (struct wined3d_swapchain*,int ) ;

__attribute__((used)) static void wined3d_cs_exec_present(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_present *op = data;
    struct wined3d_swapchain *swapchain;
    unsigned int i;

    swapchain = op->swapchain;
    wined3d_swapchain_set_window(swapchain, op->dst_window_override);

    if (op->swap_interval && swapchain->desc.swap_interval != op->swap_interval)
    {
        swapchain->desc.swap_interval = op->swap_interval;
        swapchain_update_swap_interval(swapchain);
    }

    swapchain->swapchain_ops->swapchain_present(swapchain, &op->src_rect, &op->dst_rect, op->flags);

    wined3d_resource_release(&swapchain->front_buffer->resource);
    for (i = 0; i < swapchain->desc.backbuffer_count; ++i)
    {
        wined3d_resource_release(&swapchain->back_buffers[i]->resource);
    }

    InterlockedDecrement(&cs->pending_presents);
}
