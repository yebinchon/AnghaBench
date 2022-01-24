#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  query; } ;
typedef  int /*<<< orphan*/  Portal ;
typedef  TYPE_1__ PLpgSQL_stmt_fors ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_forq ;
typedef  int /*<<< orphan*/  PLpgSQL_execstate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(PLpgSQL_execstate *estate, PLpgSQL_stmt_fors *stmt)
{
	Portal		portal;
	int			rc;

	/*
	 * Open the implicit cursor for the statement using exec_run_select
	 */
	FUNC2(estate, stmt->query, 0, &portal);

	/*
	 * Execute the loop
	 */
	rc = FUNC1(estate, (PLpgSQL_stmt_forq *) stmt, portal, true);

	/*
	 * Close the implicit cursor
	 */
	FUNC0(portal);

	return rc;
}