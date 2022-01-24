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
typedef  int /*<<< orphan*/  RowMarkClause ;

/* Variables and functions */
 int /*<<< orphan*/  LockClauseStrength ; 
 int /*<<< orphan*/  LockWaitPolicy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pushedDown ; 
 int /*<<< orphan*/  rti ; 
 int /*<<< orphan*/  strength ; 
 int /*<<< orphan*/  waitPolicy ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const RowMarkClause *node)
{
	FUNC2("ROWMARKCLAUSE");

	FUNC3(rti);
	FUNC1(strength, LockClauseStrength);
	FUNC1(waitPolicy, LockWaitPolicy);
	FUNC0(pushedDown);
}