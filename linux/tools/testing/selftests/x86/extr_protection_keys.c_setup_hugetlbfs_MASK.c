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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ GET_NR_HUGE_PAGES ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 () ; 
 int hugetlb_setup_ok ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC9(void)
{
	int err;
	int fd;
	char buf[] = "123";

	if (FUNC5() != 0) {
		FUNC4(stderr, "WARNING: not run as root, can not do hugetlb test\n");
		return;
	}

	FUNC2(FUNC0(GET_NR_HUGE_PAGES), "/proc/sys/vm/nr_hugepages");

	/*
	 * Now go make sure that we got the pages and that they
	 * are 2M pages.  Someone might have made 1G the default.
	 */
	fd = FUNC6("/sys/kernel/mm/hugepages/hugepages-2048kB/nr_hugepages", O_RDONLY);
	if (fd < 0) {
		FUNC7("opening sysfs 2M hugetlb config");
		return;
	}

	/* -1 to guarantee leaving the trailing \0 */
	err = FUNC8(fd, buf, sizeof(buf)-1);
	FUNC3(fd);
	if (err <= 0) {
		FUNC7("reading sysfs 2M hugetlb config");
		return;
	}

	if (FUNC1(buf) != GET_NR_HUGE_PAGES) {
		FUNC4(stderr, "could not confirm 2M pages, got: '%s' expected %ld\n",
			buf, GET_NR_HUGE_PAGES);
		return;
	}

	hugetlb_setup_ok = 1;
}