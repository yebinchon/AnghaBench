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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 scalar_t__ DEBUG_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int*,int) ; 

void FUNC6(int *ptr, u16 pkey)
{
	int ret;
	int test_fd = FUNC1();

	FUNC4(pkey);
	ret = FUNC5(test_fd, ptr, 100);
	FUNC0("read ret: %d\n", ret);
	if (ret < 0 && (DEBUG_LEVEL > 0))
		FUNC2("verbose read result (OK for this to be bad)");
	FUNC3(ret);
}