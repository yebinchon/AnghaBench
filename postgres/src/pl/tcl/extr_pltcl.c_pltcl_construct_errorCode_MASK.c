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
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_3__ {scalar_t__ internalpos; scalar_t__ lineno; scalar_t__ funcname; scalar_t__ filename; scalar_t__ internalquery; scalar_t__ constraint_name; scalar_t__ datatype_name; scalar_t__ column_name; scalar_t__ table_name; scalar_t__ schema_name; scalar_t__ context; scalar_t__ hint; scalar_t__ detail; scalar_t__ message; int /*<<< orphan*/  sqlerrcode; } ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 char* PG_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UTF_BEGIN ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  UTF_END ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(Tcl_Interp *interp, ErrorData *edata)
{
	Tcl_Obj    *obj = FUNC2();

	FUNC0(interp, obj,
							 FUNC3("POSTGRES", -1));
	FUNC0(interp, obj,
							 FUNC3(PG_VERSION, -1));
	FUNC0(interp, obj,
							 FUNC3("SQLSTATE", -1));
	FUNC0(interp, obj,
							 FUNC3(FUNC7(edata->sqlerrcode), -1));
	FUNC0(interp, obj,
							 FUNC3("condition", -1));
	FUNC0(interp, obj,
							 FUNC3(FUNC6(edata->sqlerrcode), -1));
	FUNC0(interp, obj,
							 FUNC3("message", -1));
	UTF_BEGIN;
	FUNC0(interp, obj,
							 FUNC3(FUNC5(edata->message), -1));
	UTF_END;
	if (edata->detail)
	{
		FUNC0(interp, obj,
								 FUNC3("detail", -1));
		UTF_BEGIN;
		FUNC0(interp, obj,
								 FUNC3(FUNC5(edata->detail), -1));
		UTF_END;
	}
	if (edata->hint)
	{
		FUNC0(interp, obj,
								 FUNC3("hint", -1));
		UTF_BEGIN;
		FUNC0(interp, obj,
								 FUNC3(FUNC5(edata->hint), -1));
		UTF_END;
	}
	if (edata->context)
	{
		FUNC0(interp, obj,
								 FUNC3("context", -1));
		UTF_BEGIN;
		FUNC0(interp, obj,
								 FUNC3(FUNC5(edata->context), -1));
		UTF_END;
	}
	if (edata->schema_name)
	{
		FUNC0(interp, obj,
								 FUNC3("schema", -1));
		UTF_BEGIN;
		FUNC0(interp, obj,
								 FUNC3(FUNC5(edata->schema_name), -1));
		UTF_END;
	}
	if (edata->table_name)
	{
		FUNC0(interp, obj,
								 FUNC3("table", -1));
		UTF_BEGIN;
		FUNC0(interp, obj,
								 FUNC3(FUNC5(edata->table_name), -1));
		UTF_END;
	}
	if (edata->column_name)
	{
		FUNC0(interp, obj,
								 FUNC3("column", -1));
		UTF_BEGIN;
		FUNC0(interp, obj,
								 FUNC3(FUNC5(edata->column_name), -1));
		UTF_END;
	}
	if (edata->datatype_name)
	{
		FUNC0(interp, obj,
								 FUNC3("datatype", -1));
		UTF_BEGIN;
		FUNC0(interp, obj,
								 FUNC3(FUNC5(edata->datatype_name), -1));
		UTF_END;
	}
	if (edata->constraint_name)
	{
		FUNC0(interp, obj,
								 FUNC3("constraint", -1));
		UTF_BEGIN;
		FUNC0(interp, obj,
								 FUNC3(FUNC5(edata->constraint_name), -1));
		UTF_END;
	}
	/* cursorpos is never interesting here; report internal query/pos */
	if (edata->internalquery)
	{
		FUNC0(interp, obj,
								 FUNC3("statement", -1));
		UTF_BEGIN;
		FUNC0(interp, obj,
								 FUNC3(FUNC5(edata->internalquery), -1));
		UTF_END;
	}
	if (edata->internalpos > 0)
	{
		FUNC0(interp, obj,
								 FUNC3("cursor_position", -1));
		FUNC0(interp, obj,
								 FUNC1(edata->internalpos));
	}
	if (edata->filename)
	{
		FUNC0(interp, obj,
								 FUNC3("filename", -1));
		UTF_BEGIN;
		FUNC0(interp, obj,
								 FUNC3(FUNC5(edata->filename), -1));
		UTF_END;
	}
	if (edata->lineno > 0)
	{
		FUNC0(interp, obj,
								 FUNC3("lineno", -1));
		FUNC0(interp, obj,
								 FUNC1(edata->lineno));
	}
	if (edata->funcname)
	{
		FUNC0(interp, obj,
								 FUNC3("funcname", -1));
		UTF_BEGIN;
		FUNC0(interp, obj,
								 FUNC3(FUNC5(edata->funcname), -1));
		UTF_END;
	}

	FUNC4(interp, obj);
}