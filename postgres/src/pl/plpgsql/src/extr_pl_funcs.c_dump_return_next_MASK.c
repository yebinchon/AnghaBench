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
struct TYPE_3__ {scalar_t__ retvarno; int /*<<< orphan*/ * expr; } ;
typedef  TYPE_1__ PLpgSQL_stmt_return_next ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(PLpgSQL_stmt_return_next *stmt)
{
	FUNC1();
	FUNC2("RETURN NEXT ");
	if (stmt->retvarno >= 0)
		FUNC2("variable %d", stmt->retvarno);
	else if (stmt->expr != NULL)
		FUNC0(stmt->expr);
	else
		FUNC2("NULL");
	FUNC2("\n");
}