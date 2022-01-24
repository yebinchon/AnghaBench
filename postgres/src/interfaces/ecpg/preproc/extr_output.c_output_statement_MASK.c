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
typedef  enum ECPG_statement_type { ____Placeholder_ECPG_statement_type } ECPG_statement_type ;

/* Variables and functions */
 int ECPGst_exec_immediate ; 
 int ECPGst_execute ; 
 int ECPGst_normal ; 
 int ECPGst_prepnormal ; 
 int /*<<< orphan*/  argsinsert ; 
 int /*<<< orphan*/  argsresult ; 
 int /*<<< orphan*/  auto_prepare ; 
 int /*<<< orphan*/  base_yyout ; 
 int compat ; 
 char* connection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 char** ecpg_statement_type_name ; 
 int force_indicator ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int questionmarks ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void
FUNC7(char *stmt, int whenever_mode, enum ECPG_statement_type st)
{
	FUNC1(base_yyout, "{ ECPGdo(__LINE__, %d, %d, %s, %d, ", compat, force_indicator, connection ? connection : "NULL", questionmarks);

	if (st == ECPGst_prepnormal && !auto_prepare)
		st = ECPGst_normal;

	/*
	 * In following cases, stmt is CSTRING or char_variable. They must be
	 * output directly. - prepared_name of EXECUTE without exprlist -
	 * execstring of EXECUTE IMMEDIATE
	 */
	FUNC1(base_yyout, "%s, ", ecpg_statement_type_name[st]);
	if (st == ECPGst_execute || st == ECPGst_exec_immediate)
		FUNC1(base_yyout, "%s, ", stmt);
	else
	{
		FUNC2("\"", base_yyout);
		FUNC4(stmt, false);
		FUNC2("\", ", base_yyout);
	}

	/* dump variables to C file */
	FUNC0(argsinsert, 1);
	FUNC2("ECPGt_EOIT, ", base_yyout);
	FUNC0(argsresult, 1);
	FUNC2("ECPGt_EORT);", base_yyout);
	FUNC5();

	FUNC6(whenever_mode | 2);
	FUNC3(stmt);
	if (connection != NULL)
		FUNC3(connection);
	connection = NULL;
}