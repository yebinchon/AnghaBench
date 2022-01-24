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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  RAND_DRBG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(RAND_DRBG *master,
                                       RAND_DRBG *public,
                                       RAND_DRBG *private)
{
    pid_t pid;
    int status=0;

    pid = FUNC4();
    if (!FUNC1(pid, 0))
        return 0;

    if (pid > 0) {
        /* I'm the parent; wait for the child and check its exit code */
        return FUNC0(FUNC7(pid, &status, 0), pid) && FUNC0(status, 0);
    }

    /* I'm the child; check whether all three DRBGs reseed. */
    if (!FUNC2(FUNC5(1, master, public, private, 1, 1, 1, 0)))
        status = 1;

    /* Remove hooks  */
    FUNC6(master);
    FUNC6(public);
    FUNC6(private);
    FUNC3(status);
}