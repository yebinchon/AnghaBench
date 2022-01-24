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
 int /*<<< orphan*/  PPC_FEATURE2_ARCH_3_00 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ cacheline_buf ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(void)
{
	/* Only run this test on a P9 or later */
	FUNC0(!FUNC2(PPC_FEATURE2_ARCH_3_00));

	/* Register our signal handler with SIGBUS */
	FUNC3();

	/* +1 makes buf unaligned */
	FUNC1(cacheline_buf+1);

	/* We should not get here */
	return 1;
}