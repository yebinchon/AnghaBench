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
typedef  int /*<<< orphan*/  AlterTableMoveAllStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  new_tablespacename ; 
 int /*<<< orphan*/  nowait ; 
 int /*<<< orphan*/  objtype ; 
 int /*<<< orphan*/  orig_tablespacename ; 
 int /*<<< orphan*/  roles ; 

__attribute__((used)) static bool
FUNC3(const AlterTableMoveAllStmt *a,
							const AlterTableMoveAllStmt *b)
{
	FUNC2(orig_tablespacename);
	FUNC1(objtype);
	FUNC0(roles);
	FUNC2(new_tablespacename);
	FUNC1(nowait);

	return true;
}