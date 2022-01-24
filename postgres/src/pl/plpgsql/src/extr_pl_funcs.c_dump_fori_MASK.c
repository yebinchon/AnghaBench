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
struct TYPE_5__ {int /*<<< orphan*/  body; scalar_t__ step; scalar_t__ upper; scalar_t__ lower; scalar_t__ reverse; TYPE_1__* var; } ;
struct TYPE_4__ {char* refname; } ;
typedef  TYPE_2__ PLpgSQL_stmt_fori ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int dump_indent ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(PLpgSQL_stmt_fori *stmt)
{
	FUNC1();
	FUNC3("FORI %s %s\n", stmt->var->refname, (stmt->reverse) ? "REVERSE" : "NORMAL");

	dump_indent += 2;
	FUNC1();
	FUNC3("    lower = ");
	FUNC0(stmt->lower);
	FUNC3("\n");
	FUNC1();
	FUNC3("    upper = ");
	FUNC0(stmt->upper);
	FUNC3("\n");
	if (stmt->step)
	{
		FUNC1();
		FUNC3("    step = ");
		FUNC0(stmt->step);
		FUNC3("\n");
	}
	dump_indent -= 2;

	FUNC2(stmt->body);

	FUNC1();
	FUNC3("    ENDFORI\n");
}