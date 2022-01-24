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
typedef  int /*<<< orphan*/  OnConflictExpr ;

/* Variables and functions */
 int /*<<< orphan*/  OnConflictAction ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  action ; 
 int /*<<< orphan*/  arbiterElems ; 
 int /*<<< orphan*/  arbiterWhere ; 
 int /*<<< orphan*/  constraint ; 
 int /*<<< orphan*/  exclRelIndex ; 
 int /*<<< orphan*/  exclRelTlist ; 
 int /*<<< orphan*/  onConflictSet ; 
 int /*<<< orphan*/  onConflictWhere ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const OnConflictExpr *node)
{
	FUNC3("ONCONFLICTEXPR");

	FUNC0(action, OnConflictAction);
	FUNC2(arbiterElems);
	FUNC2(arbiterWhere);
	FUNC4(constraint);
	FUNC2(onConflictSet);
	FUNC2(onConflictWhere);
	FUNC1(exclRelIndex);
	FUNC2(exclRelTlist);
}