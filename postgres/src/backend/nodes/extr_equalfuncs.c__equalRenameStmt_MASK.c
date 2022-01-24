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
typedef  int /*<<< orphan*/  RenameStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  behavior ; 
 int /*<<< orphan*/  missing_ok ; 
 int /*<<< orphan*/  newname ; 
 int /*<<< orphan*/  object ; 
 int /*<<< orphan*/  relation ; 
 int /*<<< orphan*/  relationType ; 
 int /*<<< orphan*/  renameType ; 
 int /*<<< orphan*/  subname ; 

__attribute__((used)) static bool
FUNC3(const RenameStmt *a, const RenameStmt *b)
{
	FUNC1(renameType);
	FUNC1(relationType);
	FUNC0(relation);
	FUNC0(object);
	FUNC2(subname);
	FUNC2(newname);
	FUNC1(behavior);
	FUNC1(missing_ok);

	return true;
}