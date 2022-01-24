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
 int /*<<< orphan*/  PPC_FEATURE_ARCH_2_06 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lfiwzx ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(void)
{
	int rc = 0;

	FUNC1(!FUNC2());
	FUNC1(!FUNC3(PPC_FEATURE_ARCH_2_06));

	FUNC4("Floating point: 2.06\n");

	FUNC0(lfiwzx);

	return rc;
}