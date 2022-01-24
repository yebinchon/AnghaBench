#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * simple_eval_estate; } ;
struct TYPE_6__ {scalar_t__ chain; } ;
typedef  TYPE_1__ PLpgSQL_stmt_commit ;
typedef  TYPE_2__ PLpgSQL_execstate ;

/* Variables and functions */
 int PLPGSQL_RC_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC4(PLpgSQL_execstate *estate, PLpgSQL_stmt_commit *stmt)
{
	if (stmt->chain)
		FUNC1();
	else
	{
		FUNC0();
		FUNC2();
	}

	estate->simple_eval_estate = NULL;
	FUNC3(estate);

	return PLPGSQL_RC_OK;
}