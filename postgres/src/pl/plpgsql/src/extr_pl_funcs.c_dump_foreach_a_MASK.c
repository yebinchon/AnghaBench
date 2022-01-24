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
struct TYPE_3__ {int varno; scalar_t__ slice; int /*<<< orphan*/  body; int /*<<< orphan*/  expr; } ;
typedef  TYPE_1__ PLpgSQL_stmt_foreach_a ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(PLpgSQL_stmt_foreach_a *stmt)
{
	FUNC1();
	FUNC3("FOREACHA var %d ", stmt->varno);
	if (stmt->slice != 0)
		FUNC3("SLICE %d ", stmt->slice);
	FUNC3("IN ");
	FUNC0(stmt->expr);
	FUNC3("\n");

	FUNC2(stmt->body);

	FUNC1();
	FUNC3("    ENDFOREACHA");
}