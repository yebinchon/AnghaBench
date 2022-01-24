#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* target; scalar_t__ strict; int /*<<< orphan*/  sqlstmt; } ;
struct TYPE_4__ {int dno; char* refname; } ;
typedef  TYPE_2__ PLpgSQL_stmt_execsql ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int dump_indent ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(PLpgSQL_stmt_execsql *stmt)
{
	FUNC1();
	FUNC2("EXECSQL ");
	FUNC0(stmt->sqlstmt);
	FUNC2("\n");

	dump_indent += 2;
	if (stmt->target != NULL)
	{
		FUNC1();
		FUNC2("    INTO%s target = %d %s\n",
			   stmt->strict ? " STRICT" : "",
			   stmt->target->dno, stmt->target->refname);
	}
	dump_indent -= 2;
}