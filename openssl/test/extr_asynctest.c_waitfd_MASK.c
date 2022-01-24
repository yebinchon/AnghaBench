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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  MAGIC_WAIT_FD ; 

__attribute__((used)) static int FUNC5(void *args)
{
    ASYNC_JOB *job;
    ASYNC_WAIT_CTX *waitctx;
    job = FUNC2();
    if (job == NULL)
        return 0;
    waitctx = FUNC3(job);
    if (waitctx == NULL)
        return 0;

    /* First case: no fd added or removed */
    FUNC4();

    /* Second case: one fd added */
    if (!FUNC1(waitctx, waitctx, MAGIC_WAIT_FD, NULL, NULL))
        return 0;
    FUNC4();

    /* Third case: all fd removed */
    if (!FUNC0(waitctx, waitctx))
        return 0;
    FUNC4();

    /* Last case: fd added and immediately removed */
    if (!FUNC1(waitctx, waitctx, MAGIC_WAIT_FD, NULL, NULL))
        return 0;
    if (!FUNC0(waitctx, waitctx))
        return 0;

    return 1;
}