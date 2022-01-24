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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  PlanRowMark ;

/* Variables and functions */
 int /*<<< orphan*/  LockClauseStrength ; 
 int /*<<< orphan*/  LockWaitPolicy ; 
 int /*<<< orphan*/  RowMarkType ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allMarkTypes ; 
 int /*<<< orphan*/  isParent ; 
 int /*<<< orphan*/  markType ; 
 int /*<<< orphan*/  prti ; 
 int /*<<< orphan*/  rowmarkId ; 
 int /*<<< orphan*/  rti ; 
 int /*<<< orphan*/  strength ; 
 int /*<<< orphan*/  waitPolicy ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const PlanRowMark *node)
{
	FUNC3("PLANROWMARK");

	FUNC4(rti);
	FUNC4(prti);
	FUNC4(rowmarkId);
	FUNC1(markType, RowMarkType);
	FUNC2(allMarkTypes);
	FUNC1(strength, LockClauseStrength);
	FUNC1(waitPolicy, LockWaitPolicy);
	FUNC0(isParent);
}