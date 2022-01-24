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
 int /*<<< orphan*/  PPC_FEATURE_HAS_ALTIVEC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lvx ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stvebx ; 
 int /*<<< orphan*/  stvehx ; 
 int /*<<< orphan*/  stvewx ; 
 int /*<<< orphan*/  stvx ; 
 int /*<<< orphan*/  stvxl ; 

int FUNC6(void)
{
	int rc = 0;

	FUNC1(!FUNC3());
	FUNC1(!FUNC4(PPC_FEATURE_HAS_ALTIVEC));

	FUNC5("VMX\n");
	FUNC0(lvx);

	/*
	 * FIXME: These loads only load part of the register, so our
	 * testing method doesn't work. Also they don't take alignment
	 * faults, so it's kinda pointless anyway
	 *
	 LOAD_VMX_XFORM_TEST(lvebx)
	 LOAD_VMX_XFORM_TEST(lvehx)
	 LOAD_VMX_XFORM_TEST(lvewx)
	 LOAD_VMX_XFORM_TEST(lvxl)
	*/
	FUNC2(stvx);
	FUNC2(stvebx);
	FUNC2(stvehx);
	FUNC2(stvewx);
	FUNC2(stvxl);
	return rc;
}