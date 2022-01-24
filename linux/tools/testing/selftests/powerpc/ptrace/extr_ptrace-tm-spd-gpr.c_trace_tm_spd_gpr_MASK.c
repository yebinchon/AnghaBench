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
 int /*<<< orphan*/  FPR_4_REP ; 
 int /*<<< orphan*/  GPR_1 ; 
 int /*<<< orphan*/  GPR_3 ; 
 int /*<<< orphan*/  GPR_4 ; 
 int TEST_PASS ; 
 int* pptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(pid_t child)
{
	unsigned long gpr[18];
	unsigned long fpr[32];

	FUNC0(FUNC5(child));
	FUNC0(FUNC4(child, gpr));
	FUNC0(FUNC8(gpr, GPR_4));
	FUNC0(FUNC3(child, fpr));
	FUNC0(FUNC7(fpr, FPR_4_REP));
	FUNC0(FUNC1(child, fpr));
	FUNC0(FUNC7(fpr, FPR_1_REP));
	FUNC0(FUNC2(child, gpr));
	FUNC0(FUNC8(gpr, GPR_1));
	FUNC0(FUNC10(child, GPR_3));
	FUNC0(FUNC9(child, FPR_3_REP));

	pptr[0] = 1;
	pptr[1] = 1;
	FUNC0(FUNC6(child));
	return TEST_PASS;
}