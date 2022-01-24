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
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  lfd ; 
 int /*<<< orphan*/  lfdu ; 
 int /*<<< orphan*/  lfdux ; 
 int /*<<< orphan*/  lfdx ; 
 int /*<<< orphan*/  lfs ; 
 int /*<<< orphan*/  lfsu ; 
 int /*<<< orphan*/  lfsux ; 
 int /*<<< orphan*/  lfsx ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stfd ; 
 int /*<<< orphan*/  stfdu ; 
 int /*<<< orphan*/  stfdux ; 
 int /*<<< orphan*/  stfdx ; 
 int /*<<< orphan*/  stfiwx ; 
 int /*<<< orphan*/  stfs ; 
 int /*<<< orphan*/  stfsu ; 
 int /*<<< orphan*/  stfsux ; 
 int /*<<< orphan*/  stfsx ; 

int FUNC7(void)
{
	int rc = 0;

	FUNC2(!FUNC5());

	FUNC6("Floating point\n");
	FUNC0(lfd);
	FUNC1(lfdx);
	FUNC0(lfdu);
	FUNC1(lfdux);
	FUNC0(lfs);
	FUNC1(lfsx);
	FUNC0(lfsu);
	FUNC1(lfsux);
	FUNC3(stfd);
	FUNC4(stfdx);
	FUNC3(stfdu);
	FUNC4(stfdux);
	FUNC3(stfs);
	FUNC4(stfsx);
	FUNC3(stfsu);
	FUNC4(stfsux);
	FUNC4(stfiwx);

	return rc;
}