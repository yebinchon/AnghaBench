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
typedef  int /*<<< orphan*/  AlterEnumStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  newVal ; 
 int /*<<< orphan*/  newValIsAfter ; 
 int /*<<< orphan*/  newValNeighbor ; 
 int /*<<< orphan*/  oldVal ; 
 int /*<<< orphan*/  skipIfNewValExists ; 
 int /*<<< orphan*/  typeName ; 

__attribute__((used)) static bool
FUNC3(const AlterEnumStmt *a, const AlterEnumStmt *b)
{
	FUNC0(typeName);
	FUNC2(oldVal);
	FUNC2(newVal);
	FUNC2(newValNeighbor);
	FUNC1(newValIsAfter);
	FUNC1(skipIfNewValExists);

	return true;
}