#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vo_wayland_state {TYPE_1__* vo; } ;
struct ra_ctx {int /*<<< orphan*/  swapchain; TYPE_2__* vo; } ;
struct TYPE_4__ {struct vo_wayland_state* wl; } ;
struct TYPE_3__ {int /*<<< orphan*/  dheight; int /*<<< orphan*/  dwidth; } ;

/* Variables and functions */
 int VO_EVENT_RESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_ctx*) ; 
 int FUNC2 (TYPE_2__*,int*,int,void*) ; 

__attribute__((used)) static int FUNC3(struct ra_ctx *ctx, int *events, int request,
                             void *data)
{
    struct vo_wayland_state *wl = ctx->vo->wl;
    int r = FUNC2(ctx->vo, events, request, data);

    if (*events & VO_EVENT_RESIZE) {
        FUNC1(ctx);
        FUNC0(ctx->swapchain, wl->vo->dwidth, wl->vo->dheight, 0);
    }

    return r;
}