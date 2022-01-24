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
struct mp_vdpau_ctx {int is_preempted; int preemption_user_notified; double last_preemption_retry_fail; int /*<<< orphan*/  preemption_counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_vdpau_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_vdpau_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_vdpau_ctx*) ; 
 double FUNC3 () ; 
 scalar_t__ FUNC4 (struct mp_vdpau_ctx*,int) ; 

__attribute__((used)) static int FUNC5(struct mp_vdpau_ctx *ctx)
{
    if (!ctx->is_preempted)
        return 0;
    FUNC2(ctx);
    if (!ctx->preemption_user_notified) {
        FUNC0(ctx, "Got display preemption notice! Will attempt to recover.\n");
        ctx->preemption_user_notified = true;
    }
    /* Trying to initialize seems to be quite slow, so only try once a
     * second to avoid using 100% CPU. */
    if (ctx->last_preemption_retry_fail &&
        FUNC3() - ctx->last_preemption_retry_fail < 1.0)
        return -1;
    if (FUNC4(ctx, false) < 0) {
        ctx->last_preemption_retry_fail = FUNC3();
        return -1;
    }
    ctx->preemption_user_notified = false;
    ctx->last_preemption_retry_fail = 0;
    ctx->is_preempted = false;
    ctx->preemption_counter++;
    FUNC1(ctx, "Recovered from display preemption.\n");
    return 1;
}