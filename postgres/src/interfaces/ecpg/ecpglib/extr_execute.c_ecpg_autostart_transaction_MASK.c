#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct statement {int /*<<< orphan*/ * results; int /*<<< orphan*/  compat; TYPE_1__* connection; int /*<<< orphan*/  lineno; } ;
struct TYPE_2__ {int /*<<< orphan*/  connection; int /*<<< orphan*/  autocommit; } ;

/* Variables and functions */
 scalar_t__ PQTRANS_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct statement*,int) ; 

bool
FUNC5(struct statement *stmt)
{
	if (FUNC2(stmt->connection->connection) == PQTRANS_IDLE && !stmt->connection->autocommit)
	{
		stmt->results = FUNC1(stmt->connection->connection, "begin transaction");
		if (!FUNC3(stmt->results, stmt->lineno, stmt->connection->connection, stmt->compat))
		{
			FUNC4(stmt, false);
			return false;
		}
		FUNC0(stmt->results);
		stmt->results = NULL;
	}
	return true;
}