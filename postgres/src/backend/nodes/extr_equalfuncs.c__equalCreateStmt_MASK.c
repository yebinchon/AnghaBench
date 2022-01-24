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
typedef  int /*<<< orphan*/  CreateStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
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

__attribute__((used)) static bool
FUNC3(const CreateStmt *a, const CreateStmt *b)
{
	FUNC0(relation);
	FUNC0(tableElts);
	FUNC0(inhRelations);
	FUNC0(partbound);
	FUNC0(partspec);
	FUNC0(ofTypename);
	FUNC0(constraints);
	FUNC0(options);
	FUNC1(oncommit);
	FUNC2(tablespacename);
	FUNC2(accessMethod);
	FUNC1(if_not_exists);

	return true;
}