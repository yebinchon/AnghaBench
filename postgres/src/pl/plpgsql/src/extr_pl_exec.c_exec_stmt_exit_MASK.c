#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  exitlabel; } ;
struct TYPE_7__ {scalar_t__ is_exit; int /*<<< orphan*/  label; int /*<<< orphan*/ * cond; } ;
typedef  TYPE_1__ PLpgSQL_stmt_exit ;
typedef  TYPE_2__ PLpgSQL_execstate ;

/* Variables and functions */
 int PLPGSQL_RC_CONTINUE ; 
 int PLPGSQL_RC_EXIT ; 
 int PLPGSQL_RC_OK ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC2(PLpgSQL_execstate *estate, PLpgSQL_stmt_exit *stmt)
{
	/*
	 * If the exit / continue has a condition, evaluate it
	 */
	if (stmt->cond != NULL)
	{
		bool		value;
		bool		isnull;

		value = FUNC0(estate, stmt->cond, &isnull);
		FUNC1(estate);
		if (isnull || value == false)
			return PLPGSQL_RC_OK;
	}

	estate->exitlabel = stmt->label;
	if (stmt->is_exit)
		return PLPGSQL_RC_EXIT;
	else
		return PLPGSQL_RC_CONTINUE;
}