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
struct TYPE_4__ {char const* errMsg; char* errQuery; scalar_t__ resultStatus; int /*<<< orphan*/  client_encoding; int /*<<< orphan*/ * errFields; } ;
typedef  int /*<<< orphan*/  PQExpBuffer ;
typedef  TYPE_1__ PGresult ;
typedef  scalar_t__ PGVerbosity ;
typedef  scalar_t__ PGContextVisibility ;

/* Variables and functions */
 scalar_t__ PGRES_FATAL_ERROR ; 
 int /*<<< orphan*/  PG_DIAG_COLUMN_NAME ; 
 int /*<<< orphan*/  PG_DIAG_CONSTRAINT_NAME ; 
 int /*<<< orphan*/  PG_DIAG_CONTEXT ; 
 int /*<<< orphan*/  PG_DIAG_DATATYPE_NAME ; 
 int /*<<< orphan*/  PG_DIAG_INTERNAL_POSITION ; 
 int /*<<< orphan*/  PG_DIAG_INTERNAL_QUERY ; 
 int /*<<< orphan*/  PG_DIAG_MESSAGE_DETAIL ; 
 int /*<<< orphan*/  PG_DIAG_MESSAGE_HINT ; 
 int /*<<< orphan*/  PG_DIAG_MESSAGE_PRIMARY ; 
 int /*<<< orphan*/  PG_DIAG_SCHEMA_NAME ; 
 int /*<<< orphan*/  PG_DIAG_SEVERITY ; 
 int /*<<< orphan*/  PG_DIAG_SOURCE_FILE ; 
 int /*<<< orphan*/  PG_DIAG_SOURCE_FUNCTION ; 
 int /*<<< orphan*/  PG_DIAG_SOURCE_LINE ; 
 int /*<<< orphan*/  PG_DIAG_SQLSTATE ; 
 int /*<<< orphan*/  PG_DIAG_STATEMENT_POSITION ; 
 int /*<<< orphan*/  PG_DIAG_TABLE_NAME ; 
 scalar_t__ PQERRORS_SQLSTATE ; 
 scalar_t__ PQERRORS_TERSE ; 
 scalar_t__ PQERRORS_VERBOSE ; 
 scalar_t__ PQSHOW_CONTEXT_ALWAYS ; 
 scalar_t__ PQSHOW_CONTEXT_ERRORS ; 
 char* FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (char const*) ; 
 char const* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 

void
FUNC7(PQExpBuffer msg, const PGresult *res,
					 PGVerbosity verbosity, PGContextVisibility show_context)
{
	const char *val;
	const char *querytext = NULL;
	int			querypos = 0;

	/* If we couldn't allocate a PGresult, just say "out of memory" */
	if (res == NULL)
	{
		FUNC3(msg, FUNC5("out of memory\n"));
		return;
	}

	/*
	 * If we don't have any broken-down fields, just return the base message.
	 * This mainly applies if we're given a libpq-generated error result.
	 */
	if (res->errFields == NULL)
	{
		if (res->errMsg && res->errMsg[0])
			FUNC3(msg, res->errMsg);
		else
			FUNC3(msg, FUNC5("no error message available\n"));
		return;
	}

	/* Else build error message from relevant fields */
	val = FUNC0(res, PG_DIAG_SEVERITY);
	if (val)
		FUNC1(msg, "%s:  ", val);

	if (verbosity == PQERRORS_SQLSTATE)
	{
		/*
		 * If we have a SQLSTATE, print that and nothing else.  If not (which
		 * shouldn't happen for server-generated errors, but might possibly
		 * happen for libpq-generated ones), fall back to TERSE format, as
		 * that seems better than printing nothing at all.
		 */
		val = FUNC0(res, PG_DIAG_SQLSTATE);
		if (val)
		{
			FUNC1(msg, "%s\n", val);
			return;
		}
		verbosity = PQERRORS_TERSE;
	}

	if (verbosity == PQERRORS_VERBOSE)
	{
		val = FUNC0(res, PG_DIAG_SQLSTATE);
		if (val)
			FUNC1(msg, "%s: ", val);
	}
	val = FUNC0(res, PG_DIAG_MESSAGE_PRIMARY);
	if (val)
		FUNC3(msg, val);
	val = FUNC0(res, PG_DIAG_STATEMENT_POSITION);
	if (val)
	{
		if (verbosity != PQERRORS_TERSE && res->errQuery != NULL)
		{
			/* emit position as a syntax cursor display */
			querytext = res->errQuery;
			querypos = FUNC4(val);
		}
		else
		{
			/* emit position as text addition to primary message */
			/* translator: %s represents a digit string */
			FUNC1(msg, FUNC5(" at character %s"),
							  val);
		}
	}
	else
	{
		val = FUNC0(res, PG_DIAG_INTERNAL_POSITION);
		if (val)
		{
			querytext = FUNC0(res, PG_DIAG_INTERNAL_QUERY);
			if (verbosity != PQERRORS_TERSE && querytext != NULL)
			{
				/* emit position as a syntax cursor display */
				querypos = FUNC4(val);
			}
			else
			{
				/* emit position as text addition to primary message */
				/* translator: %s represents a digit string */
				FUNC1(msg, FUNC5(" at character %s"),
								  val);
			}
		}
	}
	FUNC2(msg, '\n');
	if (verbosity != PQERRORS_TERSE)
	{
		if (querytext && querypos > 0)
			FUNC6(msg, querytext, querypos,
								res->client_encoding);
		val = FUNC0(res, PG_DIAG_MESSAGE_DETAIL);
		if (val)
			FUNC1(msg, FUNC5("DETAIL:  %s\n"), val);
		val = FUNC0(res, PG_DIAG_MESSAGE_HINT);
		if (val)
			FUNC1(msg, FUNC5("HINT:  %s\n"), val);
		val = FUNC0(res, PG_DIAG_INTERNAL_QUERY);
		if (val)
			FUNC1(msg, FUNC5("QUERY:  %s\n"), val);
		if (show_context == PQSHOW_CONTEXT_ALWAYS ||
			(show_context == PQSHOW_CONTEXT_ERRORS &&
			 res->resultStatus == PGRES_FATAL_ERROR))
		{
			val = FUNC0(res, PG_DIAG_CONTEXT);
			if (val)
				FUNC1(msg, FUNC5("CONTEXT:  %s\n"),
								  val);
		}
	}
	if (verbosity == PQERRORS_VERBOSE)
	{
		val = FUNC0(res, PG_DIAG_SCHEMA_NAME);
		if (val)
			FUNC1(msg,
							  FUNC5("SCHEMA NAME:  %s\n"), val);
		val = FUNC0(res, PG_DIAG_TABLE_NAME);
		if (val)
			FUNC1(msg,
							  FUNC5("TABLE NAME:  %s\n"), val);
		val = FUNC0(res, PG_DIAG_COLUMN_NAME);
		if (val)
			FUNC1(msg,
							  FUNC5("COLUMN NAME:  %s\n"), val);
		val = FUNC0(res, PG_DIAG_DATATYPE_NAME);
		if (val)
			FUNC1(msg,
							  FUNC5("DATATYPE NAME:  %s\n"), val);
		val = FUNC0(res, PG_DIAG_CONSTRAINT_NAME);
		if (val)
			FUNC1(msg,
							  FUNC5("CONSTRAINT NAME:  %s\n"), val);
	}
	if (verbosity == PQERRORS_VERBOSE)
	{
		const char *valf;
		const char *vall;

		valf = FUNC0(res, PG_DIAG_SOURCE_FILE);
		vall = FUNC0(res, PG_DIAG_SOURCE_LINE);
		val = FUNC0(res, PG_DIAG_SOURCE_FUNCTION);
		if (val || valf || vall)
		{
			FUNC3(msg, FUNC5("LOCATION:  "));
			if (val)
				FUNC1(msg, FUNC5("%s, "), val);
			if (valf && vall)	/* unlikely we'd have just one */
				FUNC1(msg, FUNC5("%s:%s"),
								  valf, vall);
			FUNC2(msg, '\n');
		}
	}
}