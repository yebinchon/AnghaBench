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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

pid_t FUNC6(void)
{
	pid_t forkret;

	forkret = FUNC2();
	FUNC4(forkret >= 0);
	FUNC1("[%d] fork() ret: %d\n", FUNC3(), forkret);

	if (!forkret) {
		/* in the child */
		while (1) {
			FUNC0("child sleeping...\n");
			FUNC5(30);
		}
	}
	return forkret;
}