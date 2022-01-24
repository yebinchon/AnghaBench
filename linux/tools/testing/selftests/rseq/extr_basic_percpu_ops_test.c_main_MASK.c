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
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(int argc, char **argv)
{
	if (FUNC2()) {
		FUNC0(stderr, "Error: rseq_register_current_thread(...) failed(%d): %s\n",
			errno, FUNC4(errno));
		goto error;
	}
	FUNC1("spinlock\n");
	FUNC6();
	FUNC1("percpu_list\n");
	FUNC5();
	if (FUNC3()) {
		FUNC0(stderr, "Error: rseq_unregister_current_thread(...) failed(%d): %s\n",
			errno, FUNC4(errno));
		goto error;
	}
	return 0;

error:
	return -1;
}