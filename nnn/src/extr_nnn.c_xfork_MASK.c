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
typedef  int pid_t ;

/* Variables and functions */
 int F_NOWAIT ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC0 () ; 
 void* oldsighup ; 
 void* oldsigtstp ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pid_t FUNC4(uchar flag)
{
	pid_t p = FUNC0();

	if (p > 0) {
		/* the parent ignores the interrupt, quit and hangup signals */
		oldsighup = FUNC3(SIGHUP, SIG_IGN);
		oldsigtstp = FUNC3(SIGTSTP, SIG_DFL);
	} else if (p == 0) {
		/* so they can be used to stop the child */
		FUNC3(SIGHUP, SIG_DFL);
		FUNC3(SIGINT, SIG_DFL);
		FUNC3(SIGQUIT, SIG_DFL);
		FUNC3(SIGTSTP, SIG_DFL);

		if (flag & F_NOWAIT)
			FUNC2();
	}

	if (p == -1)
		FUNC1("fork");
	return p;
}