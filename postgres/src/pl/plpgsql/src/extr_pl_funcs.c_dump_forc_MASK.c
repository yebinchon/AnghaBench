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
struct TYPE_5__ {int curvar; int /*<<< orphan*/  body; int /*<<< orphan*/ * argquery; TYPE_1__* var; } ;
struct TYPE_4__ {char* refname; } ;
typedef  TYPE_2__ PLpgSQL_stmt_forc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int dump_indent ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(PLpgSQL_stmt_forc *stmt)
{
	FUNC1();
	FUNC3("FORC %s ", stmt->var->refname);
	FUNC3("curvar=%d\n", stmt->curvar);

	dump_indent += 2;
	if (stmt->argquery != NULL)
	{
		FUNC1();
		FUNC3("  arguments = ");
		FUNC0(stmt->argquery);
		FUNC3("\n");
	}
	dump_indent -= 2;

	FUNC2(stmt->body);

	FUNC1();
	FUNC3("    ENDFORC\n");
}