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
struct TYPE_6__ {scalar_t__ assoc_context; void* internalquery; void* constraint_name; void* datatype_name; void* column_name; void* table_name; void* schema_name; void* backtrace; void* context; void* hint; void* detail_log; void* detail; void* message; } ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ CurrentMemoryContext ; 
 scalar_t__ ErrorContext ; 
 TYPE_1__* errordata ; 
 size_t errordata_stack_depth ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 void* FUNC4 (void*) ; 

ErrorData *
FUNC5(void)
{
	ErrorData  *edata = &errordata[errordata_stack_depth];
	ErrorData  *newedata;

	/*
	 * we don't increment recursion_depth because out-of-memory here does not
	 * indicate a problem within the error subsystem.
	 */
	FUNC1();

	FUNC0(CurrentMemoryContext != ErrorContext);

	/* Copy the struct itself */
	newedata = (ErrorData *) FUNC3(sizeof(ErrorData));
	FUNC2(newedata, edata, sizeof(ErrorData));

	/* Make copies of separately-allocated fields */
	if (newedata->message)
		newedata->message = FUNC4(newedata->message);
	if (newedata->detail)
		newedata->detail = FUNC4(newedata->detail);
	if (newedata->detail_log)
		newedata->detail_log = FUNC4(newedata->detail_log);
	if (newedata->hint)
		newedata->hint = FUNC4(newedata->hint);
	if (newedata->context)
		newedata->context = FUNC4(newedata->context);
	if (newedata->backtrace)
		newedata->backtrace = FUNC4(newedata->backtrace);
	if (newedata->schema_name)
		newedata->schema_name = FUNC4(newedata->schema_name);
	if (newedata->table_name)
		newedata->table_name = FUNC4(newedata->table_name);
	if (newedata->column_name)
		newedata->column_name = FUNC4(newedata->column_name);
	if (newedata->datatype_name)
		newedata->datatype_name = FUNC4(newedata->datatype_name);
	if (newedata->constraint_name)
		newedata->constraint_name = FUNC4(newedata->constraint_name);
	if (newedata->internalquery)
		newedata->internalquery = FUNC4(newedata->internalquery);

	/* Use the calling context for string allocation */
	newedata->assoc_context = CurrentMemoryContext;

	return newedata;
}