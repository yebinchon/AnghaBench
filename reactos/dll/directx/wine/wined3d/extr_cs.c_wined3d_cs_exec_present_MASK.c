#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ swap_interval; unsigned int backbuffer_count; } ;
struct wined3d_swapchain {TYPE_4__** back_buffers; TYPE_3__ desc; TYPE_2__* front_buffer; TYPE_1__* swapchain_ops; } ;
struct wined3d_cs_present {scalar_t__ swap_interval; int /*<<< orphan*/  flags; int /*<<< orphan*/  dst_rect; int /*<<< orphan*/  src_rect; int /*<<< orphan*/  dst_window_override; struct wined3d_swapchain* swapchain; } ;
struct wined3d_cs {int /*<<< orphan*/  pending_presents; } ;
struct TYPE_8__ {int /*<<< orphan*/  resource; } ;
struct TYPE_6__ {int /*<<< orphan*/  resource; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* swapchain_present ) (struct wined3d_swapchain*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_swapchain*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_swapchain*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_swapchain*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_present *op = data;
    struct wined3d_swapchain *swapchain;
    unsigned int i;

    swapchain = op->swapchain;
    FUNC4(swapchain, op->dst_window_override);

    if (op->swap_interval && swapchain->desc.swap_interval != op->swap_interval)
    {
        swapchain->desc.swap_interval = op->swap_interval;
        FUNC2(swapchain);
    }

    swapchain->swapchain_ops->swapchain_present(swapchain, &op->src_rect, &op->dst_rect, op->flags);

    FUNC3(&swapchain->front_buffer->resource);
    for (i = 0; i < swapchain->desc.backbuffer_count; ++i)
    {
        FUNC3(&swapchain->back_buffers[i]->resource);
    }

    FUNC0(&cs->pending_presents);
}