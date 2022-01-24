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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPC_FEATURE2_ARCH_3_00 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lxsd ; 
 int /*<<< orphan*/  lxsibzx ; 
 int /*<<< orphan*/  lxsihzx ; 
 int /*<<< orphan*/  lxssp ; 
 int /*<<< orphan*/  lxv ; 
 int /*<<< orphan*/  lxvb16x ; 
 int /*<<< orphan*/  lxvh8x ; 
 int /*<<< orphan*/  lxvl ; 
 int /*<<< orphan*/  lxvll ; 
 int /*<<< orphan*/  lxvwsx ; 
 int /*<<< orphan*/  lxvx ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  stxsd ; 
 int /*<<< orphan*/  stxsibx ; 
 int /*<<< orphan*/  stxsihx ; 
 int /*<<< orphan*/  stxssp ; 
 int /*<<< orphan*/  stxv ; 
 int /*<<< orphan*/  stxvb16x ; 
 int /*<<< orphan*/  stxvh8x ; 
 int /*<<< orphan*/  stxvl ; 
 int /*<<< orphan*/  stxvll ; 
 int /*<<< orphan*/  stxvx ; 

int FUNC10(void)
{
	int rc = 0;

	FUNC3(!FUNC7());

	FUNC3(!FUNC8(PPC_FEATURE2_ARCH_3_00));
	FUNC9("VSX: 3.00B\n");
	FUNC0(lxsd);
	FUNC2(lxsibzx);
	FUNC2(lxsihzx);
	FUNC0(lxssp);
	FUNC1(lxv);
	FUNC2(lxvb16x);
	FUNC2(lxvh8x);
	FUNC2(lxvx);
	FUNC2(lxvwsx);
	FUNC2(lxvl);
	FUNC2(lxvll);
	FUNC4(stxsd);
	FUNC6(stxsibx);
	FUNC6(stxsihx);
	FUNC4(stxssp);
	FUNC5(stxv);
	FUNC6(stxvb16x);
	FUNC6(stxvh8x);
	FUNC6(stxvx);
	FUNC6(stxvl);
	FUNC6(stxvll);
	return rc;
}