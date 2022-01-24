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
typedef  int /*<<< orphan*/  CreateStmt ;

/* Variables and functions */
 int /*<<< orphan*/  OnCommitAction ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  accessMethod ; 
 int /*<<< orphan*/  constraints ; 
 int /*<<< orphan*/  if_not_exists ; 
 int /*<<< orphan*/  inhRelations ; 
 int /*<<< orphan*/  ofTypename ; 
 int /*<<< orphan*/  oncommit ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  partbound ; 
 int /*<<< orphan*/  partspec ; 
 int /*<<< orphan*/  relation ; 
 int /*<<< orphan*/  tableElts ; 
 int /*<<< orphan*/  tablespacename ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const CreateStmt *node)
{
	FUNC2(relation);
	FUNC2(tableElts);
	FUNC2(inhRelations);
	FUNC2(partspec);
	FUNC2(partbound);
	FUNC2(ofTypename);
	FUNC2(constraints);
	FUNC2(options);
	FUNC1(oncommit, OnCommitAction);
	FUNC3(tablespacename);
	FUNC3(accessMethod);
	FUNC0(if_not_exists);
}