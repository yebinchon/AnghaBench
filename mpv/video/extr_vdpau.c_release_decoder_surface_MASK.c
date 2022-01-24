#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct surface_ref {size_t index; struct mp_vdpau_ctx* ctx; } ;
struct mp_vdpau_ctx {int /*<<< orphan*/  pool_lock; TYPE_1__* video_surfaces; } ;
struct TYPE_2__ {int in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct surface_ref*) ; 

__attribute__((used)) static void FUNC4(void *ptr)
{
    struct surface_ref *r = ptr;
    struct mp_vdpau_ctx *ctx = r->ctx;

    FUNC1(&ctx->pool_lock);
    FUNC0(ctx->video_surfaces[r->index].in_use);
    ctx->video_surfaces[r->index].in_use = false;
    FUNC2(&ctx->pool_lock);

    FUNC3(r);
}