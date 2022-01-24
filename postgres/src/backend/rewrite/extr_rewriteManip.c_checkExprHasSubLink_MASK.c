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
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  QTW_IGNORE_RC_SUBQUERIES ; 
 int /*<<< orphan*/  checkExprHasSubLink_walker ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool
FUNC1(Node *node)
{
	/*
	 * If a Query is passed, examine it --- but we should not recurse into
	 * sub-Queries that are in its rangetable or CTE list.
	 */
	return FUNC0(node,
										   checkExprHasSubLink_walker,
										   NULL,
										   QTW_IGNORE_RC_SUBQUERIES);
}