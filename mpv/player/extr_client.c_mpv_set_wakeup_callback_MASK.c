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
struct TYPE_3__ {void (* wakeup_cb ) (void*) ;void* wakeup_cb_ctx; int /*<<< orphan*/  wakeup_lock; } ;
typedef  TYPE_1__ mpv_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void FUNC2 (void*) ; 

void FUNC3(mpv_handle *ctx, void (*cb)(void *d), void *d)
{
    FUNC0(&ctx->wakeup_lock);
    ctx->wakeup_cb = cb;
    ctx->wakeup_cb_ctx = d;
    if (ctx->wakeup_cb)
        ctx->wakeup_cb(ctx->wakeup_cb_ctx);
    FUNC1(&ctx->wakeup_lock);
}