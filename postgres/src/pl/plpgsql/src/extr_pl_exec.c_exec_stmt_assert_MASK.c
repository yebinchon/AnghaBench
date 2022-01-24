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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_3__ {int /*<<< orphan*/ * message; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ PLpgSQL_stmt_assert ;
typedef  int /*<<< orphan*/  PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_ASSERT_FAILURE ; 
 int /*<<< orphan*/  ERROR ; 
 int PLPGSQL_RC_OK ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  plpgsql_check_asserts ; 

__attribute__((used)) static int
FUNC8(PLpgSQL_execstate *estate, PLpgSQL_stmt_assert *stmt)
{
	bool		value;
	bool		isnull;

	/* do nothing when asserts are not enabled */
	if (!plpgsql_check_asserts)
		return PLPGSQL_RC_OK;

	value = FUNC5(estate, stmt->cond, &isnull);
	FUNC6(estate);

	if (isnull || !value)
	{
		char	   *message = NULL;

		if (stmt->message != NULL)
		{
			Datum		val;
			Oid			typeid;
			int32		typmod;

			val = FUNC7(estate, stmt->message,
								 &isnull, &typeid, &typmod);
			if (!isnull)
				message = FUNC0(estate, val, typeid);
			/* we mustn't do exec_eval_cleanup here */
		}

		FUNC1(ERROR,
				(FUNC2(ERRCODE_ASSERT_FAILURE),
				 message ? FUNC4("%s", message) :
				 FUNC3("assertion failed")));
	}

	return PLPGSQL_RC_OK;
}