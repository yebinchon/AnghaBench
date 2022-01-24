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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lxsdx ; 
 int /*<<< orphan*/  lxvd2x ; 
 int /*<<< orphan*/  lxvdsx ; 
 int /*<<< orphan*/  lxvw4x ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stxsdx ; 
 int /*<<< orphan*/  stxvd2x ; 
 int /*<<< orphan*/  stxvw4x ; 

int FUNC6(void)
{
	int rc = 0;

	FUNC1(!FUNC3());
	FUNC1(!FUNC4(PPC_FEATURE_ARCH_2_06));

	FUNC5("VSX: 2.06B\n");
	FUNC0(lxvd2x);
	FUNC0(lxvw4x);
	FUNC0(lxsdx);
	FUNC0(lxvdsx);
	FUNC2(stxvd2x);
	FUNC2(stxvw4x);
	FUNC2(stxsdx);
	return rc;
}