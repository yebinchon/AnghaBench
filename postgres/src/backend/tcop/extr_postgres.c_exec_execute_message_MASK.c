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
struct TYPE_13__ {int /*<<< orphan*/  (* rDestroy ) (TYPE_2__*) ;} ;
struct TYPE_12__ {scalar_t__ stmts; char* sourceText; char* prepStmtName; int /*<<< orphan*/  atStart; int /*<<< orphan*/ * commandTag; int /*<<< orphan*/ * portalParams; } ;
typedef  TYPE_1__* Portal ;
typedef  int /*<<< orphan*/ * ParamListInfo ;
typedef  TYPE_2__ DestReceiver ;
typedef  scalar_t__ CommandDest ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int COMPLETION_TAG_BUFSIZE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__* FUNC4 (scalar_t__) ; 
 scalar_t__ DestRemote ; 
 scalar_t__ DestRemoteExecute ; 
 int /*<<< orphan*/  ERRCODE_IN_FAILED_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_CURSOR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 long FETCH_ALL ; 
 TYPE_1__* FUNC6 (char const*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*,long,int,int,TYPE_2__*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 (char*,int) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 char const* debug_query_string ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int log_statement_stats ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC28 (char) ; 
 char* FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*) ; 
 scalar_t__ whereToSendOutput ; 

__attribute__((used)) static void
FUNC33(const char *portal_name, long max_rows)
{
	CommandDest dest;
	DestReceiver *receiver;
	Portal		portal;
	bool		completed;
	char		completionTag[COMPLETION_TAG_BUFSIZE];
	const char *sourceText;
	const char *prepStmtName;
	ParamListInfo portalParams;
	bool		save_log_statement_stats = log_statement_stats;
	bool		is_xact_command;
	bool		execute_is_fetch;
	bool		was_logged = false;
	char		msec_str[32];

	/* Adjust destination to tell printtup.c what to do */
	dest = whereToSendOutput;
	if (dest == DestRemote)
		dest = DestRemoteExecute;

	portal = FUNC6(portal_name);
	if (!FUNC11(portal))
		FUNC20(ERROR,
				(FUNC21(ERRCODE_UNDEFINED_CURSOR),
				 FUNC25("portal \"%s\" does not exist", portal_name)));

	/*
	 * If the original query was a null string, just return
	 * EmptyQueryResponse.
	 */
	if (portal->commandTag == NULL)
	{
		FUNC0(portal->stmts == NIL);
		FUNC10(dest);
		return;
	}

	/* Does the portal contain a transaction command? */
	is_xact_command = FUNC9(portal->stmts);

	/*
	 * We must copy the sourceText and prepStmtName into MessageContext in
	 * case the portal is destroyed during finish_xact_command. Can avoid the
	 * copy if it's not an xact command, though.
	 */
	if (is_xact_command)
	{
		sourceText = FUNC29(portal->sourceText);
		if (portal->prepStmtName)
			prepStmtName = FUNC29(portal->prepStmtName);
		else
			prepStmtName = "<unnamed>";

		/*
		 * An xact command shouldn't have any parameters, which is a good
		 * thing because they wouldn't be around after finish_xact_command.
		 */
		portalParams = NULL;
	}
	else
	{
		sourceText = portal->sourceText;
		if (portal->prepStmtName)
			prepStmtName = portal->prepStmtName;
		else
			prepStmtName = "<unnamed>";
		portalParams = portal->portalParams;
	}

	/*
	 * Report query to various monitoring facilities.
	 */
	debug_query_string = sourceText;

	FUNC27(STATE_RUNNING, sourceText);

	FUNC30(portal->commandTag, false);

	if (save_log_statement_stats)
		FUNC13();

	FUNC1(portal->commandTag, dest);

	/*
	 * Create dest receiver in MessageContext (we don't want it in transaction
	 * context, because that may get deleted if portal contains VACUUM).
	 */
	receiver = FUNC4(dest);
	if (dest == DestRemoteExecute)
		FUNC14(receiver, portal);

	/*
	 * Ensure we are in a transaction command (this should normally be the
	 * case already due to prior BIND).
	 */
	FUNC31();

	/*
	 * If we re-issue an Execute protocol request against an existing portal,
	 * then we are only fetching more rows rather than completely re-executing
	 * the query from the start. atStart is never reset for a v3 portal, so we
	 * are safe to use this check.
	 */
	execute_is_fetch = !portal->atStart;

	/* Log immediately if dictated by log_statement */
	if (FUNC18(portal->stmts))
	{
		FUNC20(LOG,
				(FUNC25("%s %s%s%s: %s",
						execute_is_fetch ?
						FUNC16("execute fetch from") :
						FUNC16("execute"),
						prepStmtName,
						*portal_name ? "/" : "",
						*portal_name ? portal_name : "",
						sourceText),
				 FUNC24(true),
				 FUNC23(portalParams)));
		was_logged = true;
	}

	/*
	 * If we are in aborted transaction state, the only portals we can
	 * actually run are those containing COMMIT or ROLLBACK commands.
	 */
	if (FUNC7() &&
		!FUNC8(portal->stmts))
		FUNC20(ERROR,
				(FUNC21(ERRCODE_IN_FAILED_SQL_TRANSACTION),
				 FUNC25("current transaction is aborted, "
						"commands ignored until end of transaction block"),
				 FUNC22()));

	/* Check for cancel signal before we start execution */
	FUNC2();

	/*
	 * Okay to run the portal.
	 */
	if (max_rows <= 0)
		max_rows = FETCH_ALL;

	completed = FUNC12(portal,
						  max_rows,
						  true, /* always top level */
						  !execute_is_fetch && max_rows == FETCH_ALL,
						  receiver,
						  receiver,
						  completionTag);

	receiver->rDestroy(receiver);

	if (completed)
	{
		if (is_xact_command)
		{
			/*
			 * If this was a transaction control statement, commit it.  We
			 * will start a new xact command for the next command (if any).
			 */
			FUNC26();
		}
		else
		{
			/*
			 * We need a CommandCounterIncrement after every query, except
			 * those that start or end a transaction block.
			 */
			FUNC3();

			/*
			 * Disable statement timeout whenever we complete an Execute
			 * message.  The next protocol message will start a fresh timeout.
			 */
			FUNC19();
		}

		/* Send appropriate CommandComplete to client */
		FUNC5(completionTag, dest);
	}
	else
	{
		/* Portal run not complete, so send PortalSuspended */
		if (whereToSendOutput == DestRemote)
			FUNC28('s');
	}

	/*
	 * Emit duration logging if appropriate.
	 */
	switch (FUNC17(msec_str, was_logged))
	{
		case 1:
			FUNC20(LOG,
					(FUNC25("duration: %s ms", msec_str),
					 FUNC24(true)));
			break;
		case 2:
			FUNC20(LOG,
					(FUNC25("duration: %s ms  %s %s%s%s: %s",
							msec_str,
							execute_is_fetch ?
							FUNC16("execute fetch from") :
							FUNC16("execute"),
							prepStmtName,
							*portal_name ? "/" : "",
							*portal_name ? portal_name : "",
							sourceText),
					 FUNC24(true),
					 FUNC23(portalParams)));
			break;
	}

	if (save_log_statement_stats)
		FUNC15("EXECUTE MESSAGE STATISTICS");

	debug_query_string = NULL;
}