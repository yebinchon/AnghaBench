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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hugetlb_testcases ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  testcases ; 

int FUNC4(int argc, char **argv)
{
	int ret;

	if (!FUNC3())
		return 0;

	ret = FUNC1(testcases, FUNC0(testcases));
	if (argc == 2 && !FUNC2(argv[1], "--run-hugetlb"))
		ret = FUNC1(hugetlb_testcases, FUNC0(hugetlb_testcases));
	return ret;
}