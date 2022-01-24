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
 int /*<<< orphan*/  PPC_FEATURE2_ARCH_2_07 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lxsiwax ; 
 int /*<<< orphan*/  lxsiwzx ; 
 int /*<<< orphan*/  lxsspx ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stxsiwx ; 
 int /*<<< orphan*/  stxsspx ; 

int FUNC6(void)
{
	int rc = 0;

	FUNC1(!FUNC3());
	FUNC1(!FUNC4(PPC_FEATURE2_ARCH_2_07));

	FUNC5("VSX: 2.07B\n");
	FUNC0(lxsspx);
	FUNC0(lxsiwax);
	FUNC0(lxsiwzx);
	FUNC2(stxsspx);
	FUNC2(stxsiwx);
	return rc;
}