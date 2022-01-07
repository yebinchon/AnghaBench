
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int backbuffer_count; } ;
struct wined3d_swapchain {TYPE_3__** back_buffers; TYPE_2__ desc; TYPE_1__* front_buffer; } ;
struct wined3d_cs_present {void* flags; void* swap_interval; int dst_rect; int src_rect; struct wined3d_swapchain* swapchain; int dst_window_override; int opcode; } ;
struct wined3d_cs {int pending_presents; TYPE_4__* ops; } ;
struct TYPE_8__ {int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_present* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;
struct TYPE_7__ {int resource; } ;
struct TYPE_5__ {int resource; } ;
typedef int RECT ;
typedef int LONG ;
typedef int HWND ;
typedef void* DWORD ;


 int InterlockedCompareExchange (int *,int ,int ) ;
 int InterlockedIncrement (int *) ;
 int WINED3D_CS_OP_PRESENT ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 struct wined3d_cs_present* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;
 int wined3d_pause () ;
 int wined3d_resource_acquire (int *) ;

void wined3d_cs_emit_present(struct wined3d_cs *cs, struct wined3d_swapchain *swapchain,
        const RECT *src_rect, const RECT *dst_rect, HWND dst_window_override,
        DWORD swap_interval, DWORD flags)
{
    struct wined3d_cs_present *op;
    unsigned int i;
    LONG pending;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_PRESENT;
    op->dst_window_override = dst_window_override;
    op->swapchain = swapchain;
    op->src_rect = *src_rect;
    op->dst_rect = *dst_rect;
    op->swap_interval = swap_interval;
    op->flags = flags;

    pending = InterlockedIncrement(&cs->pending_presents);

    wined3d_resource_acquire(&swapchain->front_buffer->resource);
    for (i = 0; i < swapchain->desc.backbuffer_count; ++i)
    {
        wined3d_resource_acquire(&swapchain->back_buffers[i]->resource);
    }

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);




    while (pending > 1)
    {
        wined3d_pause();
        pending = InterlockedCompareExchange(&cs->pending_presents, 0, 0);
    }
}
