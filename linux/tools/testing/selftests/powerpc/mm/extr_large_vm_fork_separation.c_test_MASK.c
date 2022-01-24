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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAP_ANONYMOUS ; 
 int* MAP_FAILED ; 
 int MAP_FIXED_NOREPLACE ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int* FUNC8 (void*,unsigned long,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int FUNC12 (int,int*,int) ; 
 unsigned long FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int,int*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int,int*,int) ; 

__attribute__((used)) static int FUNC16(void)
{
	int p2c[2], c2p[2], rc, status, c, *p;
	unsigned long page_size;
	pid_t pid;

	page_size = FUNC13(_SC_PAGESIZE);
	FUNC1(page_size != 65536);

	// Create a mapping at 512TB to allocate an extended_id
	p = FUNC8((void *)(512ul << 40), page_size, PROT_READ | PROT_WRITE,
		MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED_NOREPLACE, -1, 0);
	if (p == MAP_FAILED) {
		FUNC9("mmap");
		FUNC11("Error: couldn't mmap(), confirm kernel has 4TB support?\n");
		return 1;
	}

	FUNC11("parent writing %p = 1\n", p);
	*p = 1;

	FUNC0(FUNC10(p2c) == -1 || FUNC10(c2p) == -1);

	pid = FUNC6();
	if (pid == 0) {
		FUNC0(FUNC12(p2c[0], &c, 1) != 1);

		pid = FUNC7();
		FUNC11("child writing  %p = %d\n", p, pid);
		*p = pid;

		FUNC0(FUNC15(c2p[1], &c, 1) != 1);
		FUNC0(FUNC12(p2c[0], &c, 1) != 1);
		FUNC5(0);
	}

	c = 0;
	FUNC0(FUNC15(p2c[1], &c, 1) != 1);
	FUNC0(FUNC12(c2p[0], &c, 1) != 1);

	// Prevent compiler optimisation
	FUNC4();

	rc = 0;
	FUNC11("parent reading %p = %d\n", p, *p);
	if (*p != 1) {
		FUNC11("Error: BUG! parent saw child's write! *p = %d\n", *p);
		rc = 1;
	}

	FUNC0(FUNC15(p2c[1], &c, 1) != 1);
	FUNC0(FUNC14(pid, &status, 0) == -1);
	FUNC0(!FUNC3(status) || FUNC2(status));

	if (rc == 0)
		FUNC11("success: test completed OK\n");

	return rc;
}