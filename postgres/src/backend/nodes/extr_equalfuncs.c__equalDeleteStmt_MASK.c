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
typedef  int /*<<< orphan*/  DeleteStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relation ; 
 int /*<<< orphan*/  returningList ; 
 int /*<<< orphan*/  usingClause ; 
 int /*<<< orphan*/  whereClause ; 
 int /*<<< orphan*/  withClause ; 

__attribute__((used)) static bool
FUNC1(const DeleteStmt *a, const DeleteStmt *b)
{
	FUNC0(relation);
	FUNC0(usingClause);
	FUNC0(whereClause);
	FUNC0(returningList);
	FUNC0(withClause);

	return true;
}