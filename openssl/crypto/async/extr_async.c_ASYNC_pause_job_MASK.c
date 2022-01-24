#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dispatcher; TYPE_2__* currjob; scalar_t__ blocked; } ;
typedef  TYPE_1__ async_ctx ;
struct TYPE_5__ {int /*<<< orphan*/  waitctx; int /*<<< orphan*/  fibrectx; int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ ASYNC_JOB ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_F_ASYNC_PAUSE_JOB ; 
 int /*<<< orphan*/  ASYNC_JOB_PAUSING ; 
 int /*<<< orphan*/  ASYNC_R_FAILED_TO_SWAP_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(void)
{
    ASYNC_JOB *job;
    async_ctx *ctx = FUNC2();

    if (ctx == NULL
            || ctx->currjob == NULL
            || ctx->blocked) {
        /*
         * Could be we've deliberately not been started within a job so this is
         * counted as success.
         */
        return 1;
    }

    job = ctx->currjob;
    job->status = ASYNC_JOB_PAUSING;

    if (!FUNC1(&job->fibrectx,
                                 &ctx->dispatcher, 1)) {
        FUNC0(ASYNC_F_ASYNC_PAUSE_JOB, ASYNC_R_FAILED_TO_SWAP_CONTEXT);
        return 0;
    }
    /* Reset counts of added and deleted fds */
    FUNC3(job->waitctx);

    return 1;
}