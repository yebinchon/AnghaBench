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
 int /*<<< orphan*/  lbz ; 
 int /*<<< orphan*/  lbzu ; 
 int /*<<< orphan*/  lbzux ; 
 int /*<<< orphan*/  lbzx ; 
 int /*<<< orphan*/  ld ; 
 int /*<<< orphan*/  ldu ; 
 int /*<<< orphan*/  ldux ; 
 int /*<<< orphan*/  ldx ; 
 int /*<<< orphan*/  lha ; 
 int /*<<< orphan*/  lhau ; 
 int /*<<< orphan*/  lhaux ; 
 int /*<<< orphan*/  lhax ; 
 int /*<<< orphan*/  lhbrx ; 
 int /*<<< orphan*/  lhz ; 
 int /*<<< orphan*/  lhzu ; 
 int /*<<< orphan*/  lhzux ; 
 int /*<<< orphan*/  lhzx ; 
 int /*<<< orphan*/  lmw ; 
 int /*<<< orphan*/  lwa ; 
 int /*<<< orphan*/  lwaux ; 
 int /*<<< orphan*/  lwax ; 
 int /*<<< orphan*/  lwbrx ; 
 int /*<<< orphan*/  lwz ; 
 int /*<<< orphan*/  lwzu ; 
 int /*<<< orphan*/  lwzux ; 
 int /*<<< orphan*/  lwzx ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stb ; 
 int /*<<< orphan*/  stbu ; 
 int /*<<< orphan*/  stbux ; 
 int /*<<< orphan*/  stbx ; 
 int /*<<< orphan*/  std ; 
 int /*<<< orphan*/  stdu ; 
 int /*<<< orphan*/  stdux ; 
 int /*<<< orphan*/  stdx ; 
 int /*<<< orphan*/  sth ; 
 int /*<<< orphan*/  sthbrx ; 
 int /*<<< orphan*/  sthu ; 
 int /*<<< orphan*/  sthux ; 
 int /*<<< orphan*/  sthx ; 
 int /*<<< orphan*/  stmw ; 
 int /*<<< orphan*/  stw ; 
 int /*<<< orphan*/  stwbrx ; 
 int /*<<< orphan*/  stwu ; 
 int /*<<< orphan*/  stwux ; 
 int /*<<< orphan*/  stwx ; 

int FUNC7(void)
{
	int rc = 0;

	FUNC2(!FUNC5());

	FUNC6("Integer\n");
	FUNC0(lbz);
	FUNC0(lbzu);
	FUNC1(lbzx);
	FUNC1(lbzux);
	FUNC0(lhz);
	FUNC0(lhzu);
	FUNC1(lhzx);
	FUNC1(lhzux);
	FUNC0(lha);
	FUNC0(lhau);
	FUNC1(lhax);
	FUNC1(lhaux);
	FUNC1(lhbrx);
	FUNC0(lwz);
	FUNC0(lwzu);
	FUNC1(lwzx);
	FUNC1(lwzux);
	FUNC0(lwa);
	FUNC1(lwax);
	FUNC1(lwaux);
	FUNC1(lwbrx);
	FUNC0(ld);
	FUNC0(ldu);
	FUNC1(ldx);
	FUNC1(ldux);
	FUNC0(lmw);
	FUNC3(stb);
	FUNC4(stbx);
	FUNC3(stbu);
	FUNC4(stbux);
	FUNC3(sth);
	FUNC4(sthx);
	FUNC3(sthu);
	FUNC4(sthux);
	FUNC4(sthbrx);
	FUNC3(stw);
	FUNC4(stwx);
	FUNC3(stwu);
	FUNC4(stwux);
	FUNC4(stwbrx);
	FUNC3(std);
	FUNC4(stdx);
	FUNC3(stdu);
	FUNC4(stdux);
	FUNC3(stmw);

	return rc;
}