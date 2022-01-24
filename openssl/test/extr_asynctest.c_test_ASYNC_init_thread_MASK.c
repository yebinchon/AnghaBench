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
typedef  int /*<<< orphan*/  ASYNC_WAIT_CTX ;
typedef  int /*<<< orphan*/  ASYNC_JOB ;

/* Variables and functions */
 scalar_t__ ASYNC_FINISH ; 
 scalar_t__ ASYNC_NO_JOBS ; 
 scalar_t__ ASYNC_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  only_pause ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC6(void)
{
    ASYNC_JOB *job1 = NULL, *job2 = NULL, *job3 = NULL;
    int funcret1, funcret2, funcret3;
    ASYNC_WAIT_CTX *waitctx = NULL;

    if (       !FUNC3(2, 0)
            || (waitctx = FUNC1()) == NULL
            || FUNC4(&job1, waitctx, &funcret1, only_pause, NULL, 0)
                != ASYNC_PAUSE
            || FUNC4(&job2, waitctx, &funcret2, only_pause, NULL, 0)
                != ASYNC_PAUSE
            || FUNC4(&job3, waitctx, &funcret3, only_pause, NULL, 0)
                != ASYNC_NO_JOBS
            || FUNC4(&job1, waitctx, &funcret1, only_pause, NULL, 0)
                != ASYNC_FINISH
            || FUNC4(&job3, waitctx, &funcret3, only_pause, NULL, 0)
                != ASYNC_PAUSE
            || FUNC4(&job2, waitctx, &funcret2, only_pause, NULL, 0)
                != ASYNC_FINISH
            || FUNC4(&job3, waitctx, &funcret3, only_pause, NULL, 0)
                != ASYNC_FINISH
            || funcret1 != 1
            || funcret2 != 1
            || funcret3 != 1) {
        FUNC5(stderr, "test_ASYNC_init_thread() failed\n");
        FUNC0(waitctx);
        FUNC2();
        return 0;
    }

    FUNC0(waitctx);
    FUNC2();
    return 1;
}