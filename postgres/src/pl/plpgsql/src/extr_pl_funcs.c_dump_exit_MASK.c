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
struct TYPE_3__ {char* label; int /*<<< orphan*/ * cond; scalar_t__ is_exit; } ;
typedef  TYPE_1__ PLpgSQL_stmt_exit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(PLpgSQL_stmt_exit *stmt)
{
	FUNC1();
	FUNC2("%s", stmt->is_exit ? "EXIT" : "CONTINUE");
	if (stmt->label != NULL)
		FUNC2(" label='%s'", stmt->label);
	if (stmt->cond != NULL)
	{
		FUNC2(" WHEN ");
		FUNC0(stmt->cond);
	}
	FUNC2("\n");
}