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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPC_FEATURE_ARCH_2_05 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lfdp ; 
 int /*<<< orphan*/  lfdpx ; 
 int /*<<< orphan*/  lfiwax ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  stfdp ; 
 int /*<<< orphan*/  stfdpx ; 

int FUNC8(void)
{
	int rc = 0;

	FUNC2(!FUNC5());
	FUNC2(!FUNC6(PPC_FEATURE_ARCH_2_05));

	FUNC7("Floating point: 2.05\n");

	FUNC0(lfdp);
	FUNC1(lfdpx);
	FUNC1(lfiwax);
	FUNC3(stfdp);
	FUNC4(stfdpx);

	return rc;
}