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
typedef  int /*<<< orphan*/  IntoClause ;

/* Variables and functions */
 int /*<<< orphan*/  OnCommitAction ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  accessMethod ; 
 int /*<<< orphan*/  colNames ; 
 int /*<<< orphan*/  onCommit ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  rel ; 
 int /*<<< orphan*/  skipData ; 
 int /*<<< orphan*/  tableSpaceName ; 
 int /*<<< orphan*/  viewQuery ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const IntoClause *node)
{
	FUNC3("INTOCLAUSE");

	FUNC2(rel);
	FUNC2(colNames);
	FUNC4(accessMethod);
	FUNC2(options);
	FUNC1(onCommit, OnCommitAction);
	FUNC4(tableSpaceName);
	FUNC2(viewQuery);
	FUNC0(skipData);
}