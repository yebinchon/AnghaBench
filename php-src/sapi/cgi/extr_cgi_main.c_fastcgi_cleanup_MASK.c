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

/* Variables and functions */
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int exit_signal ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  old_term ; 
 scalar_t__ parent ; 
 scalar_t__ parent_waiting ; 
 int /*<<< orphan*/  pgroup ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC5(int signal)
{
#ifdef DEBUG_FASTCGI
	fprintf(stderr, "FastCGI shutdown, pid %d\n", getpid());
#endif

	FUNC4(SIGTERM, &old_term, 0);

	/* Kill all the processes in our process group */
	FUNC3(-pgroup, SIGTERM);

	if (parent && parent_waiting) {
		exit_signal = 1;
	} else {
		FUNC0(0);
	}
}