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
typedef  scalar_t__ OSSL_ASYNC_FD ;
typedef  int /*<<< orphan*/  ASYNC_WAIT_CTX ;
typedef  int /*<<< orphan*/  ASYNC_JOB ;

/* Variables and functions */
 scalar_t__ ASYNC_FINISH ; 
 scalar_t__ ASYNC_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,size_t*,scalar_t__*,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ MAGIC_WAIT_FD ; 
 scalar_t__ OSSL_BAD_ASYNC_FD ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  waitfd ; 

__attribute__((used)) static int FUNC8(void)
{
    ASYNC_JOB *job = NULL;
    int funcret;
    ASYNC_WAIT_CTX *waitctx = NULL;
    OSSL_ASYNC_FD fd = OSSL_BAD_ASYNC_FD, delfd = OSSL_BAD_ASYNC_FD;
    size_t numfds, numdelfds;

    if (       !FUNC5(1, 0)
            || (waitctx = FUNC3()) == NULL
               /* On first run we're not expecting any wait fds */
            || FUNC6(&job, waitctx, &funcret, waitfd, NULL, 0)
                != ASYNC_PAUSE
            || !FUNC1(waitctx, NULL, &numfds)
            || numfds != 0
            || !FUNC2(waitctx, NULL, &numfds, NULL,
                                               &numdelfds)
            || numfds != 0
            || numdelfds != 0
               /* On second run we're expecting one added fd */
            || FUNC6(&job, waitctx, &funcret, waitfd, NULL, 0)
                != ASYNC_PAUSE
            || !FUNC1(waitctx, NULL, &numfds)
            || numfds != 1
            || !FUNC1(waitctx, &fd, &numfds)
            || fd != MAGIC_WAIT_FD
            || (fd = OSSL_BAD_ASYNC_FD, 0) /* Assign to something else */
            || !FUNC2(waitctx, NULL, &numfds, NULL,
                                               &numdelfds)
            || numfds != 1
            || numdelfds != 0
            || !FUNC2(waitctx, &fd, &numfds, NULL,
                                               &numdelfds)
            || fd != MAGIC_WAIT_FD
               /* On third run we expect one deleted fd */
            || FUNC6(&job, waitctx, &funcret, waitfd, NULL, 0)
                != ASYNC_PAUSE
            || !FUNC1(waitctx, NULL, &numfds)
            || numfds != 0
            || !FUNC2(waitctx, NULL, &numfds, NULL,
                                               &numdelfds)
            || numfds != 0
            || numdelfds != 1
            || !FUNC2(waitctx, NULL, &numfds, &delfd,
                                               &numdelfds)
            || delfd != MAGIC_WAIT_FD
            /* On last run we are not expecting any wait fd */
            || FUNC6(&job, waitctx, &funcret, waitfd, NULL, 0)
                != ASYNC_FINISH
            || !FUNC1(waitctx, NULL, &numfds)
            || numfds != 0
            || !FUNC2(waitctx, NULL, &numfds, NULL,
                                               &numdelfds)
            || numfds != 0
            || numdelfds != 0
            || funcret != 1) {
        FUNC7(stderr, "test_ASYNC_get_wait_fd() failed\n");
        FUNC0(waitctx);
        FUNC4();
        return 0;
    }

    FUNC0(waitctx);
    FUNC4();
    return 1;
}