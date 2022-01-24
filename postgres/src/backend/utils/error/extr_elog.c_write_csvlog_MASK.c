#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int filename; int lineno; int /*<<< orphan*/  funcname; int /*<<< orphan*/  cursorpos; int /*<<< orphan*/  hide_stmt; int /*<<< orphan*/  elevel; int /*<<< orphan*/ * context; int /*<<< orphan*/  hide_ctx; int /*<<< orphan*/  internalpos; int /*<<< orphan*/ * internalquery; int /*<<< orphan*/ * hint; int /*<<< orphan*/ * detail; int /*<<< orphan*/ * detail_log; int /*<<< orphan*/ * message; int /*<<< orphan*/  sqlerrcode; } ;
struct TYPE_14__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  len; } ;
struct TYPE_13__ {long backendId; int lxid; } ;
struct TYPE_12__ {char* remote_host; char* remote_port; int /*<<< orphan*/ * database_name; int /*<<< orphan*/ * user_name; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 long InvalidBackendId ; 
 int /*<<< orphan*/  LOG_DESTINATION_CSVLOG ; 
 scalar_t__ Log_error_verbosity ; 
 TYPE_11__* MyProc ; 
 int MyProcPid ; 
 TYPE_10__* MyProcPort ; 
 scalar_t__ MyStartTime ; 
 scalar_t__ PGERROR_VERBOSE ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ am_syslogger ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,long,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * application_name ; 
 int /*<<< orphan*/ * debug_query_string ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* formatted_log_time ; 
 char* formatted_start_time ; 
 char* FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_min_error_statement ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(ErrorData *edata)
{
	StringInfoData buf;
	bool		print_stmt = false;

	/* static counter for line numbers */
	static long log_line_number = 0;

	/* has counter been reset in current process? */
	static int	log_my_pid = 0;

	/*
	 * This is one of the few places where we'd rather not inherit a static
	 * variable's value from the postmaster.  But since we will, reset it when
	 * MyProcPid changes.
	 */
	if (log_my_pid != MyProcPid)
	{
		log_line_number = 0;
		log_my_pid = MyProcPid;
		formatted_start_time[0] = '\0';
	}
	log_line_number++;

	FUNC9(&buf);

	/*
	 * timestamp with milliseconds
	 *
	 * Check if the timestamp is already calculated for the syslog message,
	 * and use it if so.  Otherwise, get the current timestamp.  This is done
	 * to put same timestamp in both syslog and csvlog messages.
	 */
	if (formatted_log_time[0] == '\0')
		FUNC12();

	FUNC6(&buf, formatted_log_time);
	FUNC5(&buf, ',');

	/* username */
	if (MyProcPort)
		FUNC3(&buf, MyProcPort->user_name);
	FUNC5(&buf, ',');

	/* database name */
	if (MyProcPort)
		FUNC3(&buf, MyProcPort->database_name);
	FUNC5(&buf, ',');

	/* Process id  */
	if (MyProcPid != 0)
		FUNC4(&buf, "%d", MyProcPid);
	FUNC5(&buf, ',');

	/* Remote host and port */
	if (MyProcPort && MyProcPort->remote_host)
	{
		FUNC5(&buf, '"');
		FUNC6(&buf, MyProcPort->remote_host);
		if (MyProcPort->remote_port && MyProcPort->remote_port[0] != '\0')
		{
			FUNC5(&buf, ':');
			FUNC6(&buf, MyProcPort->remote_port);
		}
		FUNC5(&buf, '"');
	}
	FUNC5(&buf, ',');

	/* session id */
	FUNC4(&buf, "%lx.%x", (long) MyStartTime, MyProcPid);
	FUNC5(&buf, ',');

	/* Line number */
	FUNC4(&buf, "%ld", log_line_number);
	FUNC5(&buf, ',');

	/* PS display */
	if (MyProcPort)
	{
		StringInfoData msgbuf;
		const char *psdisp;
		int			displen;

		FUNC9(&msgbuf);

		psdisp = FUNC8(&displen);
		FUNC2(&msgbuf, psdisp, displen);
		FUNC3(&buf, msgbuf.data);

		FUNC11(msgbuf.data);
	}
	FUNC5(&buf, ',');

	/* session start timestamp */
	if (formatted_start_time[0] == '\0')
		FUNC13();
	FUNC6(&buf, formatted_start_time);
	FUNC5(&buf, ',');

	/* Virtual transaction id */
	/* keep VXID format in sync with lockfuncs.c */
	if (MyProc != NULL && MyProc->backendId != InvalidBackendId)
		FUNC4(&buf, "%d/%u", MyProc->backendId, MyProc->lxid);
	FUNC5(&buf, ',');

	/* Transaction id */
	FUNC4(&buf, "%u", FUNC0());
	FUNC5(&buf, ',');

	/* Error severity */
	FUNC6(&buf, FUNC1(FUNC7(edata->elevel)));
	FUNC5(&buf, ',');

	/* SQL state code */
	FUNC6(&buf, FUNC14(edata->sqlerrcode));
	FUNC5(&buf, ',');

	/* errmessage */
	FUNC3(&buf, edata->message);
	FUNC5(&buf, ',');

	/* errdetail or errdetail_log */
	if (edata->detail_log)
		FUNC3(&buf, edata->detail_log);
	else
		FUNC3(&buf, edata->detail);
	FUNC5(&buf, ',');

	/* errhint */
	FUNC3(&buf, edata->hint);
	FUNC5(&buf, ',');

	/* internal query */
	FUNC3(&buf, edata->internalquery);
	FUNC5(&buf, ',');

	/* if printed internal query, print internal pos too */
	if (edata->internalpos > 0 && edata->internalquery != NULL)
		FUNC4(&buf, "%d", edata->internalpos);
	FUNC5(&buf, ',');

	/* errcontext */
	if (!edata->hide_ctx)
		FUNC3(&buf, edata->context);
	FUNC5(&buf, ',');

	/* user query --- only reported if not disabled by the caller */
	if (FUNC10(edata->elevel, log_min_error_statement) &&
		debug_query_string != NULL &&
		!edata->hide_stmt)
		print_stmt = true;
	if (print_stmt)
		FUNC3(&buf, debug_query_string);
	FUNC5(&buf, ',');
	if (print_stmt && edata->cursorpos > 0)
		FUNC4(&buf, "%d", edata->cursorpos);
	FUNC5(&buf, ',');

	/* file error location */
	if (Log_error_verbosity >= PGERROR_VERBOSE)
	{
		StringInfoData msgbuf;

		FUNC9(&msgbuf);

		if (edata->funcname && edata->filename)
			FUNC4(&msgbuf, "%s, %s:%d",
							 edata->funcname, edata->filename,
							 edata->lineno);
		else if (edata->filename)
			FUNC4(&msgbuf, "%s:%d",
							 edata->filename, edata->lineno);
		FUNC3(&buf, msgbuf.data);
		FUNC11(msgbuf.data);
	}
	FUNC5(&buf, ',');

	/* application name */
	if (application_name)
		FUNC3(&buf, application_name);

	FUNC5(&buf, '\n');

	/* If in the syslogger process, try to write messages direct to file */
	if (am_syslogger)
		FUNC16(buf.data, buf.len, LOG_DESTINATION_CSVLOG);
	else
		FUNC15(buf.data, buf.len, LOG_DESTINATION_CSVLOG);

	FUNC11(buf.data);
}