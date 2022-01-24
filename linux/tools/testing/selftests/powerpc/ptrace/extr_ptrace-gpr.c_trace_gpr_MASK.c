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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FPR_1_REP ; 
 int /*<<< orphan*/  FPR_3_REP ; 
 int /*<<< orphan*/  GPR_1 ; 
 int /*<<< orphan*/  GPR_3 ; 
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(pid_t child)
{
	unsigned long gpr[18];
	unsigned long fpr[32];

	FUNC0(FUNC3(child));
	FUNC0(FUNC2(child, gpr));
	FUNC0(FUNC6(gpr, GPR_1));
	FUNC0(FUNC1(child, fpr));
	FUNC0(FUNC5(fpr, FPR_1_REP));
	FUNC0(FUNC8(child, GPR_3));
	FUNC0(FUNC7(child, FPR_3_REP));
	FUNC0(FUNC4(child));

	return TEST_PASS;
}