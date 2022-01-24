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
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  ModifyTablePath ;

/* Variables and functions */
 int /*<<< orphan*/  CmdType ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  canSetTag ; 
 int /*<<< orphan*/  epqParam ; 
 int /*<<< orphan*/  nominalRelation ; 
 int /*<<< orphan*/  onconflict ; 
 int /*<<< orphan*/  operation ; 
 int /*<<< orphan*/  partColsUpdated ; 
 int /*<<< orphan*/  resultRelations ; 
 int /*<<< orphan*/  returningLists ; 
 int /*<<< orphan*/  rootRelation ; 
 int /*<<< orphan*/  rowMarks ; 
 int /*<<< orphan*/  subpaths ; 
 int /*<<< orphan*/  subroots ; 
 int /*<<< orphan*/  withCheckOptionLists ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const ModifyTablePath *node)
{
	FUNC4("MODIFYTABLEPATH");

	FUNC6(str, (const Path *) node);

	FUNC1(operation, CmdType);
	FUNC0(canSetTag);
	FUNC5(nominalRelation);
	FUNC5(rootRelation);
	FUNC0(partColsUpdated);
	FUNC3(resultRelations);
	FUNC3(subpaths);
	FUNC3(subroots);
	FUNC3(withCheckOptionLists);
	FUNC3(returningLists);
	FUNC3(rowMarks);
	FUNC3(onconflict);
	FUNC2(epqParam);
}