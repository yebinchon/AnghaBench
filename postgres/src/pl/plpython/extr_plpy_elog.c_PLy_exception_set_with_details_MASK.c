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
struct TYPE_3__ {int /*<<< orphan*/  constraint_name; int /*<<< orphan*/  datatype_name; int /*<<< orphan*/  column_name; int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; int /*<<< orphan*/  internalquery; int /*<<< orphan*/  hint; int /*<<< orphan*/  detail; int /*<<< orphan*/  sqlerrcode; int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(PyObject *excclass, ErrorData *edata)
{
	PyObject   *args = NULL;
	PyObject   *error = NULL;

	args = FUNC2("(s)", edata->message);
	if (!args)
		goto failure;

	/* create a new exception with the error message as the parameter */
	error = FUNC1(excclass, args);
	if (!error)
		goto failure;

	if (!FUNC6(error, "sqlstate",
						 FUNC7(edata->sqlerrcode)))
		goto failure;

	if (!FUNC6(error, "detail", edata->detail))
		goto failure;

	if (!FUNC6(error, "hint", edata->hint))
		goto failure;

	if (!FUNC6(error, "query", edata->internalquery))
		goto failure;

	if (!FUNC6(error, "schema_name", edata->schema_name))
		goto failure;

	if (!FUNC6(error, "table_name", edata->table_name))
		goto failure;

	if (!FUNC6(error, "column_name", edata->column_name))
		goto failure;

	if (!FUNC6(error, "datatype_name", edata->datatype_name))
		goto failure;

	if (!FUNC6(error, "constraint_name", edata->constraint_name))
		goto failure;

	FUNC0(excclass, error);

	FUNC3(args);
	FUNC3(error);

	return;

failure:
	FUNC4(args);
	FUNC4(error);

	FUNC5(ERROR, "could not convert error to Python exception");
}