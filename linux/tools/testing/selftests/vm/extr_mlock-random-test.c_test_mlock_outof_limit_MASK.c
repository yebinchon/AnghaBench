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
struct rlimit {int rlim_cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLOCK_ONFAULT ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int TEST_LOOP ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(char *p, int alloc_size)
{
	int i;
	int ret = 0;
	int locked_vm_size = 0, old_locked_vm_size = 0;
	struct rlimit cur;

	FUNC1(RLIMIT_MEMLOCK, &cur);
	if (cur.rlim_cur >= alloc_size) {
		FUNC4("alloc_size[%d] >%u rlimit, violates test condition\n",
				alloc_size, (unsigned int)cur.rlim_cur);
		return -1;
	}

	old_locked_vm_size = FUNC0();
	FUNC6(FUNC7(NULL));
	for (i = 0; i < TEST_LOOP; i++) {
		int is_mlock = !!(FUNC5() % 2);
		int lock_size = (FUNC5() % (alloc_size - cur.rlim_cur))
			+ cur.rlim_cur;
		int start_offset = FUNC5() % (alloc_size - lock_size);

		if (is_mlock)
			ret = FUNC2(p + start_offset, lock_size);
		else
			ret = FUNC3(p + start_offset, lock_size,
					MLOCK_ONFAULT);
		if (ret == 0) {
			FUNC4("%s() succeeds? on %p(%d) mlock%p(%d)\n",
					is_mlock ? "mlock" : "mlock2",
					p, alloc_size,
					p + start_offset, lock_size);
			return -1;
		}
	}

	locked_vm_size = FUNC0();
	if (locked_vm_size != old_locked_vm_size) {
		FUNC4("tests leads to new mlocked page: old[%d], new[%d]\n",
				old_locked_vm_size,
				locked_vm_size);
		return -1;
	}

	return 0;
}