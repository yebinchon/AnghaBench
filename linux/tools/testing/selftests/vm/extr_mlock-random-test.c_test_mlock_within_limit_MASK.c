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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int TEST_LOOP ; 
 int FUNC1 () ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int FUNC4 (char*,int) ; 
 int FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(char *p, int alloc_size)
{
	int i;
	int ret = 0;
	int locked_vm_size = 0;
	struct rlimit cur;
	int page_size = 0;

	FUNC3(RLIMIT_MEMLOCK, &cur);
	if (cur.rlim_cur < alloc_size) {
		FUNC6("alloc_size[%d] < %u rlimit,lead to mlock failure\n",
				alloc_size, (unsigned int)cur.rlim_cur);
		return -1;
	}

	FUNC8(FUNC9(NULL));
	for (i = 0; i < TEST_LOOP; i++) {
		/*
		 * - choose mlock/mlock2 randomly
		 * - choose lock_size randomly but lock_size < alloc_size
		 * - choose start_offset randomly but p+start_offset+lock_size
		 *   < p+alloc_size
		 */
		int is_mlock = !!(FUNC7() % 2);
		int lock_size = FUNC7() % alloc_size;
		int start_offset = FUNC7() % (alloc_size - lock_size);

		if (is_mlock)
			ret = FUNC4(p + start_offset, lock_size);
		else
			ret = FUNC5(p + start_offset, lock_size,
				       MLOCK_ONFAULT);

		if (ret) {
			FUNC6("%s() failure at |%p(%d)| mlock:|%p(%d)|\n",
					is_mlock ? "mlock" : "mlock2",
					p, alloc_size,
					p + start_offset, lock_size);
			return ret;
		}
	}

	/*
	 * Check VmLck left by the tests.
	 */
	locked_vm_size = FUNC1();
	page_size = FUNC2((unsigned long)p);
	if (page_size == 0) {
		FUNC6("cannot get proc MMUPageSize\n");
		return -1;
	}

	if (locked_vm_size > FUNC0(alloc_size, page_size) + page_size) {
		FUNC6("test_mlock_within_limit() left VmLck:%d on %d chunk\n",
				locked_vm_size, alloc_size);
		return -1;
	}

	return 0;
}