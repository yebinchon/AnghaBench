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
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  ModifyTable ;

/* Variables and functions */
 int /*<<< orphan*/  CmdType ; 
 int /*<<< orphan*/  OnConflictAction ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  arbiterIndexes ; 
 int /*<<< orphan*/  canSetTag ; 
 int /*<<< orphan*/  epqParam ; 
 int /*<<< orphan*/  exclRelRTI ; 
 int /*<<< orphan*/  exclRelTlist ; 
 int /*<<< orphan*/  fdwDirectModifyPlans ; 
 int /*<<< orphan*/  fdwPrivLists ; 
 int /*<<< orphan*/  nominalRelation ; 
 int /*<<< orphan*/  onConflictAction ; 
 int /*<<< orphan*/  onConflictSet ; 
 int /*<<< orphan*/  onConflictWhere ; 
 int /*<<< orphan*/  operation ; 
 int /*<<< orphan*/  partColsUpdated ; 
 int /*<<< orphan*/  plans ; 
 int /*<<< orphan*/  resultRelIndex ; 
 int /*<<< orphan*/  resultRelations ; 
 int /*<<< orphan*/  returningLists ; 
 int /*<<< orphan*/  rootRelation ; 
 int /*<<< orphan*/  rootResultRelIndex ; 
 int /*<<< orphan*/  rowMarks ; 
 int /*<<< orphan*/  withCheckOptionLists ; 

__attribute__((used)) static void
FUNC8(StringInfo str, const ModifyTable *node)
{
	FUNC5("MODIFYTABLE");

	FUNC7(str, (const Plan *) node);

	FUNC2(operation, CmdType);
	FUNC1(canSetTag);
	FUNC6(nominalRelation);
	FUNC6(rootRelation);
	FUNC1(partColsUpdated);
	FUNC4(resultRelations);
	FUNC3(resultRelIndex);
	FUNC3(rootResultRelIndex);
	FUNC4(plans);
	FUNC4(withCheckOptionLists);
	FUNC4(returningLists);
	FUNC4(fdwPrivLists);
	FUNC0(fdwDirectModifyPlans);
	FUNC4(rowMarks);
	FUNC3(epqParam);
	FUNC2(onConflictAction, OnConflictAction);
	FUNC4(arbiterIndexes);
	FUNC4(onConflictSet);
	FUNC4(onConflictWhere);
	FUNC6(exclRelRTI);
	FUNC4(exclRelTlist);
}