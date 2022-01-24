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
struct TYPE_2__ {int num_requeue_packets; int /*<<< orphan*/ * requeue_packets; int /*<<< orphan*/  hw_probing; } ;
typedef  TYPE_1__ vd_ffmpeg_ctx ;
struct mp_filter {TYPE_1__* priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct mp_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mp_filter *vd)
{
    vd_ffmpeg_ctx *ctx = vd->priv;

    FUNC2(ctx->num_requeue_packets);
    FUNC2(!ctx->hw_probing);

    if (FUNC3(vd, ctx->requeue_packets[0]) != FUNC0(EAGAIN)) {
        FUNC4(ctx->requeue_packets[0]);
        FUNC1(ctx->requeue_packets, ctx->num_requeue_packets, 0);
    }
}