#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flip_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  video_wait; } ;
typedef  TYPE_1__ mpv_render_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(mpv_render_context *ctx)
{
    FUNC0(ctx, "glcb-reportflip");

    FUNC2(&ctx->lock);
    ctx->flip_count += 1;
    FUNC1(&ctx->video_wait);
    FUNC3(&ctx->lock);
}