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
typedef  int /*<<< orphan*/  OnConflictExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  action ; 
 int /*<<< orphan*/  arbiterElems ; 
 int /*<<< orphan*/  arbiterWhere ; 
 int /*<<< orphan*/  constraint ; 
 int /*<<< orphan*/  exclRelIndex ; 
 int /*<<< orphan*/  exclRelTlist ; 
 int /*<<< orphan*/  onConflictSet ; 
 int /*<<< orphan*/  onConflictWhere ; 

__attribute__((used)) static bool
FUNC2(const OnConflictExpr *a, const OnConflictExpr *b)
{
	FUNC1(action);
	FUNC0(arbiterElems);
	FUNC0(arbiterWhere);
	FUNC1(constraint);
	FUNC0(onConflictSet);
	FUNC0(onConflictWhere);
	FUNC1(exclRelIndex);
	FUNC0(exclRelTlist);

	return true;
}