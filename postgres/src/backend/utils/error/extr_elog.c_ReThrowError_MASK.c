#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ elevel; int /*<<< orphan*/  assoc_context; void* internalquery; void* constraint_name; void* datatype_name; void* column_name; void* table_name; void* schema_name; void* backtrace; void* context; void* hint; void* detail_log; void* detail; void* message; } ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ERROR ; 
 scalar_t__ ERRORDATA_STACK_SIZE ; 
 int /*<<< orphan*/  ErrorContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* errordata ; 
 scalar_t__ errordata_stack_depth ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*,int) ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  recursion_depth ; 

void
FUNC7(ErrorData *edata)
{
	ErrorData  *newedata;

	FUNC0(edata->elevel == ERROR);

	/* Push the data back into the error context */
	recursion_depth++;
	FUNC1(ErrorContext);

	if (++errordata_stack_depth >= ERRORDATA_STACK_SIZE)
	{
		/*
		 * Wups, stack not big enough.  We treat this as a PANIC condition
		 * because it suggests an infinite loop of errors during error
		 * recovery.
		 */
		errordata_stack_depth = -1; /* make room on stack */
		FUNC3(PANIC, (FUNC4("ERRORDATA_STACK_SIZE exceeded")));
	}

	newedata = &errordata[errordata_stack_depth];
	FUNC5(newedata, edata, sizeof(ErrorData));

	/* Make copies of separately-allocated fields */
	if (newedata->message)
		newedata->message = FUNC6(newedata->message);
	if (newedata->detail)
		newedata->detail = FUNC6(newedata->detail);
	if (newedata->detail_log)
		newedata->detail_log = FUNC6(newedata->detail_log);
	if (newedata->hint)
		newedata->hint = FUNC6(newedata->hint);
	if (newedata->context)
		newedata->context = FUNC6(newedata->context);
	if (newedata->backtrace)
		newedata->backtrace = FUNC6(newedata->backtrace);
	if (newedata->schema_name)
		newedata->schema_name = FUNC6(newedata->schema_name);
	if (newedata->table_name)
		newedata->table_name = FUNC6(newedata->table_name);
	if (newedata->column_name)
		newedata->column_name = FUNC6(newedata->column_name);
	if (newedata->datatype_name)
		newedata->datatype_name = FUNC6(newedata->datatype_name);
	if (newedata->constraint_name)
		newedata->constraint_name = FUNC6(newedata->constraint_name);
	if (newedata->internalquery)
		newedata->internalquery = FUNC6(newedata->internalquery);

	/* Reset the assoc_context to be ErrorContext */
	newedata->assoc_context = ErrorContext;

	recursion_depth--;
	FUNC2();
}