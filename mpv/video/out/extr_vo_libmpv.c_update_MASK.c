#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mpv_render_context {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  update_cond; int /*<<< orphan*/  update_cb_ctx; int /*<<< orphan*/  (* update_cb ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mpv_render_context *ctx)
{
    FUNC1(&ctx->update_lock);
    if (ctx->update_cb)
        ctx->update_cb(ctx->update_cb_ctx);

    FUNC0(&ctx->update_cond);
    FUNC2(&ctx->update_lock);
}