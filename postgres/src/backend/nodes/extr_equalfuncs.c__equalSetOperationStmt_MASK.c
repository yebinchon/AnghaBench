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
typedef  int /*<<< orphan*/  SetOperationStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all ; 
 int /*<<< orphan*/  colCollations ; 
 int /*<<< orphan*/  colTypes ; 
 int /*<<< orphan*/  colTypmods ; 
 int /*<<< orphan*/  groupClauses ; 
 int /*<<< orphan*/  larg ; 
 int /*<<< orphan*/  op ; 
 int /*<<< orphan*/  rarg ; 

__attribute__((used)) static bool
FUNC2(const SetOperationStmt *a, const SetOperationStmt *b)
{
	FUNC1(op);
	FUNC1(all);
	FUNC0(larg);
	FUNC0(rarg);
	FUNC0(colTypes);
	FUNC0(colTypmods);
	FUNC0(colCollations);
	FUNC0(groupClauses);

	return true;
}