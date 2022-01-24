#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tbuf ;
struct TYPE_13__ {scalar_t__ elevel; int sqlerrcode; char* message; char* detail; char* hint; char* context; char* schema_name; char* table_name; char* column_name; char* datatype_name; char* constraint_name; int cursorpos; int internalpos; char* internalquery; char* filename; int lineno; char* funcname; scalar_t__ show_funcname; } ;
struct TYPE_12__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ ErrorData ;

/* Variables and functions */
 scalar_t__ ERROR ; 
 int /*<<< orphan*/  FrontendProtocol ; 
 char FUNC0 (int) ; 
 char PG_DIAG_COLUMN_NAME ; 
 char PG_DIAG_CONSTRAINT_NAME ; 
 char PG_DIAG_CONTEXT ; 
 char PG_DIAG_DATATYPE_NAME ; 
 char PG_DIAG_INTERNAL_POSITION ; 
 char PG_DIAG_INTERNAL_QUERY ; 
 char PG_DIAG_MESSAGE_DETAIL ; 
 char PG_DIAG_MESSAGE_HINT ; 
 char PG_DIAG_MESSAGE_PRIMARY ; 
 char PG_DIAG_SCHEMA_NAME ; 
 char PG_DIAG_SEVERITY ; 
 char PG_DIAG_SEVERITY_NONLOCALIZED ; 
 char PG_DIAG_SOURCE_FILE ; 
 char PG_DIAG_SOURCE_FUNCTION ; 
 char PG_DIAG_SOURCE_LINE ; 
 char PG_DIAG_SQLSTATE ; 
 char PG_DIAG_STATEMENT_POSITION ; 
 char PG_DIAG_TABLE_NAME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 
 char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC15(ErrorData *edata)
{
	StringInfoData msgbuf;

	/* 'N' (Notice) is for nonfatal conditions, 'E' is for errors */
	FUNC10(&msgbuf, (edata->elevel < ERROR) ? 'N' : 'E');

	if (FUNC1(FrontendProtocol) >= 3)
	{
		/* New style with separate fields */
		const char *sev;
		char		tbuf[12];
		int			ssval;
		int			i;

		sev = FUNC7(edata->elevel);
		FUNC13(&msgbuf, PG_DIAG_SEVERITY);
		FUNC6(&msgbuf, FUNC2(sev));
		FUNC13(&msgbuf, PG_DIAG_SEVERITY_NONLOCALIZED);
		FUNC6(&msgbuf, sev);

		/* unpack MAKE_SQLSTATE code */
		ssval = edata->sqlerrcode;
		for (i = 0; i < 5; i++)
		{
			tbuf[i] = FUNC0(ssval);
			ssval >>= 6;
		}
		tbuf[i] = '\0';

		FUNC13(&msgbuf, PG_DIAG_SQLSTATE);
		FUNC6(&msgbuf, tbuf);

		/* M field is required per protocol, so always send something */
		FUNC13(&msgbuf, PG_DIAG_MESSAGE_PRIMARY);
		if (edata->message)
			FUNC6(&msgbuf, edata->message);
		else
			FUNC6(&msgbuf, FUNC2("missing error text"));

		if (edata->detail)
		{
			FUNC13(&msgbuf, PG_DIAG_MESSAGE_DETAIL);
			FUNC6(&msgbuf, edata->detail);
		}

		/* detail_log is intentionally not used here */

		if (edata->hint)
		{
			FUNC13(&msgbuf, PG_DIAG_MESSAGE_HINT);
			FUNC6(&msgbuf, edata->hint);
		}

		if (edata->context)
		{
			FUNC13(&msgbuf, PG_DIAG_CONTEXT);
			FUNC6(&msgbuf, edata->context);
		}

		if (edata->schema_name)
		{
			FUNC13(&msgbuf, PG_DIAG_SCHEMA_NAME);
			FUNC6(&msgbuf, edata->schema_name);
		}

		if (edata->table_name)
		{
			FUNC13(&msgbuf, PG_DIAG_TABLE_NAME);
			FUNC6(&msgbuf, edata->table_name);
		}

		if (edata->column_name)
		{
			FUNC13(&msgbuf, PG_DIAG_COLUMN_NAME);
			FUNC6(&msgbuf, edata->column_name);
		}

		if (edata->datatype_name)
		{
			FUNC13(&msgbuf, PG_DIAG_DATATYPE_NAME);
			FUNC6(&msgbuf, edata->datatype_name);
		}

		if (edata->constraint_name)
		{
			FUNC13(&msgbuf, PG_DIAG_CONSTRAINT_NAME);
			FUNC6(&msgbuf, edata->constraint_name);
		}

		if (edata->cursorpos > 0)
		{
			FUNC14(tbuf, sizeof(tbuf), "%d", edata->cursorpos);
			FUNC13(&msgbuf, PG_DIAG_STATEMENT_POSITION);
			FUNC6(&msgbuf, tbuf);
		}

		if (edata->internalpos > 0)
		{
			FUNC14(tbuf, sizeof(tbuf), "%d", edata->internalpos);
			FUNC13(&msgbuf, PG_DIAG_INTERNAL_POSITION);
			FUNC6(&msgbuf, tbuf);
		}

		if (edata->internalquery)
		{
			FUNC13(&msgbuf, PG_DIAG_INTERNAL_QUERY);
			FUNC6(&msgbuf, edata->internalquery);
		}

		if (edata->filename)
		{
			FUNC13(&msgbuf, PG_DIAG_SOURCE_FILE);
			FUNC6(&msgbuf, edata->filename);
		}

		if (edata->lineno > 0)
		{
			FUNC14(tbuf, sizeof(tbuf), "%d", edata->lineno);
			FUNC13(&msgbuf, PG_DIAG_SOURCE_LINE);
			FUNC6(&msgbuf, tbuf);
		}

		if (edata->funcname)
		{
			FUNC13(&msgbuf, PG_DIAG_SOURCE_FUNCTION);
			FUNC6(&msgbuf, edata->funcname);
		}

		FUNC13(&msgbuf, '\0'); /* terminator */
	}
	else
	{
		/* Old style --- gin up a backwards-compatible message */
		StringInfoData buf;

		FUNC8(&buf);

		FUNC3(&buf, "%s:  ", FUNC2(FUNC7(edata->elevel)));

		if (edata->show_funcname && edata->funcname)
			FUNC3(&buf, "%s: ", edata->funcname);

		if (edata->message)
			FUNC5(&buf, edata->message);
		else
			FUNC5(&buf, FUNC2("missing error text"));

		if (edata->cursorpos > 0)
			FUNC3(&buf, FUNC2(" at character %d"),
							 edata->cursorpos);
		else if (edata->internalpos > 0)
			FUNC3(&buf, FUNC2(" at character %d"),
							 edata->internalpos);

		FUNC4(&buf, '\n');

		FUNC6(&msgbuf, buf.data);

		FUNC9(buf.data);
	}

	FUNC11(&msgbuf);

	/*
	 * This flush is normally not necessary, since postgres.c will flush out
	 * waiting data when control returns to the main loop. But it seems best
	 * to leave it here, so that the client has some clue what happened if the
	 * backend dies before getting back to the main loop ... error/notice
	 * messages should not be a performance-critical path anyway, so an extra
	 * flush won't hurt much ...
	 */
	FUNC12();
}