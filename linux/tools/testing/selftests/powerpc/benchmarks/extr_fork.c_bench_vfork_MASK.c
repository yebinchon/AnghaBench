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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ do_exec ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  iterations ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
	while (1) {
		pid_t pid = FUNC4();
		if (pid == -1) {
			FUNC2("fork");
			FUNC1(1);
		}
		if (pid == 0) {
			if (do_exec)
				FUNC3();
			FUNC0(0);
		}
		pid = FUNC5(pid, NULL, 0);
		if (pid == -1) {
			FUNC2("waitpid");
			FUNC1(1);
		}
		iterations++;
	}
}