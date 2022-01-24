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
typedef  int /*<<< orphan*/  InsertStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cols ; 
 int /*<<< orphan*/  onConflictClause ; 
 int /*<<< orphan*/  override ; 
 int /*<<< orphan*/  relation ; 
 int /*<<< orphan*/  returningList ; 
 int /*<<< orphan*/  selectStmt ; 
 int /*<<< orphan*/  withClause ; 

__attribute__((used)) static bool
FUNC2(const InsertStmt *a, const InsertStmt *b)
{
	FUNC0(relation);
	FUNC0(cols);
	FUNC0(selectStmt);
	FUNC0(onConflictClause);
	FUNC0(returningList);
	FUNC0(withClause);
	FUNC1(override);

	return true;
}