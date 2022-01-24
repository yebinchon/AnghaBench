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
struct timespec {int dummy; } ;
struct mpv_handle {int need_wakeup; int /*<<< orphan*/  lock; int /*<<< orphan*/  wakeup_lock; int /*<<< orphan*/  wakeup; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 struct timespec FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mpv_handle *ctx, int64_t end)
{
    int r = 0;
    FUNC3(&ctx->lock);
    FUNC2(&ctx->wakeup_lock);
    if (!ctx->need_wakeup) {
        struct timespec ts = FUNC0(end);
        r = FUNC1(&ctx->wakeup, &ctx->wakeup_lock, &ts);
    }
    if (r == 0)
        ctx->need_wakeup = false;
    FUNC3(&ctx->wakeup_lock);
    FUNC2(&ctx->lock);
    return r;
}