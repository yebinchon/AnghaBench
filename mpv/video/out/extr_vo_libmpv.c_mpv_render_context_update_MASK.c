#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; scalar_t__ next_frame; int /*<<< orphan*/  dispatch; } ;
typedef  TYPE_1__ mpv_render_context ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_RENDER_UPDATE_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

uint64_t FUNC3(mpv_render_context *ctx)
{
    uint64_t res = 0;

    FUNC0(ctx->dispatch, 0);

    FUNC1(&ctx->lock);
    if (ctx->next_frame)
        res |= MPV_RENDER_UPDATE_FRAME;
    FUNC2(&ctx->lock);
    return res;
}