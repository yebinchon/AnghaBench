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
struct TYPE_4__ {struct TYPE_4__* internalquery; struct TYPE_4__* constraint_name; struct TYPE_4__* datatype_name; struct TYPE_4__* column_name; struct TYPE_4__* table_name; struct TYPE_4__* schema_name; struct TYPE_4__* backtrace; struct TYPE_4__* context; struct TYPE_4__* hint; struct TYPE_4__* detail_log; struct TYPE_4__* detail; struct TYPE_4__* message; } ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void
FUNC1(ErrorData *edata)
{
	if (edata->message)
		FUNC0(edata->message);
	if (edata->detail)
		FUNC0(edata->detail);
	if (edata->detail_log)
		FUNC0(edata->detail_log);
	if (edata->hint)
		FUNC0(edata->hint);
	if (edata->context)
		FUNC0(edata->context);
	if (edata->backtrace)
		FUNC0(edata->backtrace);
	if (edata->schema_name)
		FUNC0(edata->schema_name);
	if (edata->table_name)
		FUNC0(edata->table_name);
	if (edata->column_name)
		FUNC0(edata->column_name);
	if (edata->datatype_name)
		FUNC0(edata->datatype_name);
	if (edata->constraint_name)
		FUNC0(edata->constraint_name);
	if (edata->internalquery)
		FUNC0(edata->internalquery);
	FUNC0(edata);
}