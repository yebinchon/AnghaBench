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
typedef  int uchar ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int F_NOWAIT ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  oldsighup ; 
 int /*<<< orphan*/  oldsigtstp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(pid_t p, uchar flag)
{
	int status = 0xFFFF;

	if (!(flag & F_NOWAIT)) {
		/* wait for the child to exit */
		do {
		} while (FUNC4(p, &status, 0) == -1);

		if (FUNC2(status)) {
			status = FUNC1(status);
			FUNC0(status);
		}
	}

	/* restore parent's signal handling */
	FUNC3(SIGHUP, oldsighup);
	FUNC3(SIGTSTP, oldsigtstp);

	return status;
}