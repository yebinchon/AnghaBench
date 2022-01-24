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
struct rlimit {void* rlim_max; void* rlim_cur; } ;
typedef  void* rlim_t ;
typedef  int /*<<< orphan*/  cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct rlimit*) ; 

int FUNC4(rlim_t max)
{
	struct rlimit new;
	cap_t cap = FUNC0();

	new.rlim_cur = max;
	new.rlim_max = max;
	if (FUNC3(RLIMIT_MEMLOCK, &new)) {
		FUNC2("setrlimit() returns error\n");
		return -1;
	}

	/* drop capabilities including CAP_IPC_LOCK */
	if (FUNC1(cap)) {
		FUNC2("cap_set_proc() returns error\n");
		return -2;
	}

	return 0;
}