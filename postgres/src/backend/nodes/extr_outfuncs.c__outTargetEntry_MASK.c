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
typedef  int /*<<< orphan*/  TargetEntry ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  expr ; 
 int /*<<< orphan*/  resjunk ; 
 int /*<<< orphan*/  resname ; 
 int /*<<< orphan*/  resno ; 
 int /*<<< orphan*/  resorigcol ; 
 int /*<<< orphan*/  resorigtbl ; 
 int /*<<< orphan*/  ressortgroupref ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const TargetEntry *node)
{
	FUNC3("TARGETENTRY");

	FUNC2(expr);
	FUNC1(resno);
	FUNC5(resname);
	FUNC6(ressortgroupref);
	FUNC4(resorigtbl);
	FUNC1(resorigcol);
	FUNC0(resjunk);
}