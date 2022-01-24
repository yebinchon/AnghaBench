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
typedef  int /*<<< orphan*/  (* mpv_render_update_fn ) (void*) ;
struct TYPE_3__ {int /*<<< orphan*/  update_lock; void* update_cb_ctx; int /*<<< orphan*/  (* update_cb ) (void*) ;} ;
typedef  TYPE_1__ mpv_render_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

void FUNC3(mpv_render_context *ctx,
                                            mpv_render_update_fn callback,
                                            void *callback_ctx)
{
    FUNC0(&ctx->update_lock);
    ctx->update_cb = callback;
    ctx->update_cb_ctx = callback_ctx;
    if (ctx->update_cb)
        ctx->update_cb(ctx->update_cb_ctx);
    FUNC1(&ctx->update_lock);
}