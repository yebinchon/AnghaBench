#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ sqlerrcode; void* internalquery; int /*<<< orphan*/  internalpos; int /*<<< orphan*/  cursorpos; void* constraint_name; void* datatype_name; void* column_name; void* table_name; void* schema_name; void* backtrace; void* context; void* hint; void* detail_log; void* detail; void* message; int /*<<< orphan*/  assoc_context; int /*<<< orphan*/  funcname; int /*<<< orphan*/  lineno; int /*<<< orphan*/  filename; int /*<<< orphan*/  elevel; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* errordata ; 
 size_t errordata_stack_depth ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  recursion_depth ; 

void
FUNC4(ErrorData *edata)
{
	ErrorData  *newedata;
	MemoryContext oldcontext;

	if (!FUNC2(edata->elevel, edata->filename, edata->lineno,
				  edata->funcname, NULL))
		return;					/* error is not to be reported at all */

	newedata = &errordata[errordata_stack_depth];
	recursion_depth++;
	oldcontext = FUNC0(newedata->assoc_context);

	/* Copy the supplied fields to the error stack entry. */
	if (edata->sqlerrcode != 0)
		newedata->sqlerrcode = edata->sqlerrcode;
	if (edata->message)
		newedata->message = FUNC3(edata->message);
	if (edata->detail)
		newedata->detail = FUNC3(edata->detail);
	if (edata->detail_log)
		newedata->detail_log = FUNC3(edata->detail_log);
	if (edata->hint)
		newedata->hint = FUNC3(edata->hint);
	if (edata->context)
		newedata->context = FUNC3(edata->context);
	if (edata->backtrace)
		newedata->backtrace = FUNC3(edata->backtrace);
	/* assume message_id is not available */
	if (edata->schema_name)
		newedata->schema_name = FUNC3(edata->schema_name);
	if (edata->table_name)
		newedata->table_name = FUNC3(edata->table_name);
	if (edata->column_name)
		newedata->column_name = FUNC3(edata->column_name);
	if (edata->datatype_name)
		newedata->datatype_name = FUNC3(edata->datatype_name);
	if (edata->constraint_name)
		newedata->constraint_name = FUNC3(edata->constraint_name);
	newedata->cursorpos = edata->cursorpos;
	newedata->internalpos = edata->internalpos;
	if (edata->internalquery)
		newedata->internalquery = FUNC3(edata->internalquery);

	FUNC0(oldcontext);
	recursion_depth--;

	/* Process the error. */
	FUNC1(0);
}