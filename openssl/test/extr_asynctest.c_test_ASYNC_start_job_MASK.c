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
 scalar_t__ ASYNC_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  add_two ; 
 int ctr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC6(void)
{
    ASYNC_JOB *job = NULL;
    int funcret;
    ASYNC_WAIT_CTX *waitctx = NULL;

    ctr = 0;

    if (       !FUNC3(1, 0)
            || (waitctx = FUNC1()) == NULL
            || FUNC4(&job, waitctx, &funcret, add_two, NULL, 0)
               != ASYNC_PAUSE
            || ctr != 1
            || FUNC4(&job, waitctx, &funcret, add_two, NULL, 0)
               != ASYNC_FINISH
            || ctr != 2
            || funcret != 2) {
        FUNC5(stderr, "test_ASYNC_start_job() failed\n");
        FUNC0(waitctx);
        FUNC2();
        return 0;
    }

    FUNC0(waitctx);
    FUNC2();
    return 1;
}