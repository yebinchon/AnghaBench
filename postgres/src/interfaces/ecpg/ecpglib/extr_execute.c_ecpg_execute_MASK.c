#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct statement {scalar_t__ nparams; scalar_t__ statement_type; int /*<<< orphan*/  compat; TYPE_1__* connection; int /*<<< orphan*/  lineno; int /*<<< orphan*/  results; scalar_t__ paramformats; scalar_t__ paramlengths; scalar_t__ paramvalues; int /*<<< orphan*/  command; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  connection; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ ECPGst_execute ; 
 scalar_t__ ECPGst_prepare ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,char const* const*,int const*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char const* const*,int const*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct statement*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct statement*) ; 

bool
FUNC7(struct statement *stmt)
{
	FUNC5("ecpg_execute on line %d: query: %s; with %d parameter(s) on connection %s\n", stmt->lineno, stmt->command, stmt->nparams, stmt->connection->name);
	if (stmt->statement_type == ECPGst_execute)
	{
		stmt->results = FUNC2(stmt->connection->connection,
									   stmt->name,
									   stmt->nparams,
									   (const char *const *) stmt->paramvalues,
									   (const int *) stmt->paramlengths,
									   (const int *) stmt->paramformats,
									   0);
		FUNC5("ecpg_execute on line %d: using PQexecPrepared for \"%s\"\n", stmt->lineno, stmt->command);
	}
	else
	{
		if (stmt->nparams == 0)
		{
			stmt->results = FUNC0(stmt->connection->connection, stmt->command);
			FUNC5("ecpg_execute on line %d: using PQexec\n", stmt->lineno);
		}
		else
		{
			stmt->results = FUNC1(stmt->connection->connection,
										 stmt->command, stmt->nparams, NULL,
										 (const char *const *) stmt->paramvalues,
										 (const int *) stmt->paramlengths,
										 (const int *) stmt->paramformats,
										 0);

			FUNC5("ecpg_execute on line %d: using PQexecParams\n", stmt->lineno);
		}

		if (stmt->statement_type == ECPGst_prepare)
		{
			if (!FUNC6(stmt))
			{
				FUNC4(stmt, true);
				return false;
			}
		}
	}

	FUNC4(stmt, true);

	if (!FUNC3(stmt->results, stmt->lineno, stmt->connection->connection, stmt->compat))
		return false;

	return true;
}