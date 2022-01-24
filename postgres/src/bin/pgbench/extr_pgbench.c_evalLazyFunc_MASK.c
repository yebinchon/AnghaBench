#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  expr; struct TYPE_11__* next; } ;
struct TYPE_10__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ PgBenchValue ;
typedef  int PgBenchFunction ;
typedef  TYPE_2__ PgBenchExprLink ;
typedef  int /*<<< orphan*/  CState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  PGBENCH_AND 130 
#define  PGBENCH_CASE 129 
#define  PGBENCH_OR 128 
 int /*<<< orphan*/  PGBT_NULL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC7(CState *st,
			 PgBenchFunction func, PgBenchExprLink *args, PgBenchValue *retval)
{
	PgBenchValue a1,
				a2;
	bool		ba1,
				ba2;

	FUNC0(FUNC3(func) && args != NULL && args->next != NULL);

	/* args points to first condition */
	if (!FUNC2(st, args->expr, &a1))
		return false;

	/* second condition for AND/OR and corresponding branch for CASE */
	args = args->next;

	switch (func)
	{
		case PGBENCH_AND:
			if (a1.type == PGBT_NULL)
			{
				FUNC5(retval);
				return true;
			}

			if (!FUNC1(&a1, &ba1))
				return false;

			if (!ba1)
			{
				FUNC4(retval, false);
				return true;
			}

			if (!FUNC2(st, args->expr, &a2))
				return false;

			if (a2.type == PGBT_NULL)
			{
				FUNC5(retval);
				return true;
			}
			else if (!FUNC1(&a2, &ba2))
				return false;
			else
			{
				FUNC4(retval, ba2);
				return true;
			}

			return true;

		case PGBENCH_OR:

			if (a1.type == PGBT_NULL)
			{
				FUNC5(retval);
				return true;
			}

			if (!FUNC1(&a1, &ba1))
				return false;

			if (ba1)
			{
				FUNC4(retval, true);
				return true;
			}

			if (!FUNC2(st, args->expr, &a2))
				return false;

			if (a2.type == PGBT_NULL)
			{
				FUNC5(retval);
				return true;
			}
			else if (!FUNC1(&a2, &ba2))
				return false;
			else
			{
				FUNC4(retval, ba2);
				return true;
			}

		case PGBENCH_CASE:
			/* when true, execute branch */
			if (FUNC6(&a1))
				return FUNC2(st, args->expr, retval);

			/* now args contains next condition or final else expression */
			args = args->next;

			/* final else case? */
			if (args->next == NULL)
				return FUNC2(st, args->expr, retval);

			/* no, another when, proceed */
			return FUNC7(st, PGBENCH_CASE, args, retval);

		default:
			/* internal error, cannot get here */
			FUNC0(0);
			break;
	}
	return false;
}