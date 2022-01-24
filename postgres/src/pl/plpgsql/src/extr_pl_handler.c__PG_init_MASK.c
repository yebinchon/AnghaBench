#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PLpgSQL_plugin ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  GUC_LIST_INPUT ; 
 int /*<<< orphan*/  PGC_SUSET ; 
 int /*<<< orphan*/  PGC_USERSET ; 
 int /*<<< orphan*/  PLPGSQL_RESOLVE_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TEXTDOMAIN ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  plpgsql_check_asserts ; 
 int /*<<< orphan*/  plpgsql_extra_checks_check_hook ; 
 int /*<<< orphan*/  plpgsql_extra_errors_assign_hook ; 
 int /*<<< orphan*/  plpgsql_extra_errors_string ; 
 int /*<<< orphan*/  plpgsql_extra_warnings_assign_hook ; 
 int /*<<< orphan*/  plpgsql_extra_warnings_string ; 
 int /*<<< orphan*/ ** plpgsql_plugin_ptr ; 
 int /*<<< orphan*/  plpgsql_print_strict_params ; 
 int /*<<< orphan*/  plpgsql_subxact_cb ; 
 int /*<<< orphan*/  plpgsql_variable_conflict ; 
 int /*<<< orphan*/  plpgsql_xact_cb ; 
 int /*<<< orphan*/  variable_conflict_options ; 

void
FUNC10(void)
{
	/* Be sure we do initialization only once (should be redundant now) */
	static bool inited = false;

	if (inited)
		return;

	FUNC8(TEXTDOMAIN);

	FUNC1("plpgsql.variable_conflict",
							 FUNC7("Sets handling of conflicts between PL/pgSQL variable names and table column names."),
							 NULL,
							 &plpgsql_variable_conflict,
							 PLPGSQL_RESOLVE_ERROR,
							 variable_conflict_options,
							 PGC_SUSET, 0,
							 NULL, NULL, NULL);

	FUNC0("plpgsql.print_strict_params",
							 FUNC7("Print information about parameters in the DETAIL part of the error messages generated on INTO ... STRICT failures."),
							 NULL,
							 &plpgsql_print_strict_params,
							 false,
							 PGC_USERSET, 0,
							 NULL, NULL, NULL);

	FUNC0("plpgsql.check_asserts",
							 FUNC7("Perform checks given in ASSERT statements."),
							 NULL,
							 &plpgsql_check_asserts,
							 true,
							 PGC_USERSET, 0,
							 NULL, NULL, NULL);

	FUNC2("plpgsql.extra_warnings",
							   FUNC7("List of programming constructs that should produce a warning."),
							   NULL,
							   &plpgsql_extra_warnings_string,
							   "none",
							   PGC_USERSET, GUC_LIST_INPUT,
							   plpgsql_extra_checks_check_hook,
							   plpgsql_extra_warnings_assign_hook,
							   NULL);

	FUNC2("plpgsql.extra_errors",
							   FUNC7("List of programming constructs that should produce an error."),
							   NULL,
							   &plpgsql_extra_errors_string,
							   "none",
							   PGC_USERSET, GUC_LIST_INPUT,
							   plpgsql_extra_checks_check_hook,
							   plpgsql_extra_errors_assign_hook,
							   NULL);

	FUNC3("plpgsql");

	FUNC9();
	FUNC5(plpgsql_xact_cb, NULL);
	FUNC4(plpgsql_subxact_cb, NULL);

	/* Set up a rendezvous point with optional instrumentation plugin */
	plpgsql_plugin_ptr = (PLpgSQL_plugin **) FUNC6("PLpgSQL_plugin");

	inited = true;
}