#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* title; } ;
typedef  TYPE_1__ printQueryOpt ;
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_6__ {scalar_t__ timing; int /*<<< orphan*/  queryFout; int /*<<< orphan*/  logfile; int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  PGRES_COMMAND_OK 133 
#define  PGRES_COPY_BOTH 132 
#define  PGRES_COPY_IN 131 
#define  PGRES_COPY_OUT 130 
#define  PGRES_EMPTY_QUERY 129 
#define  PGRES_TUPLES_OK 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (double) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ cancel_pressed ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__ pset ; 

int
FUNC16(const char *query, const printQueryOpt *opt)
{
	PGresult   *res;
	double		elapsed_msec = 0;
	instr_time	before;
	instr_time	after;

	if (!pset.db)
	{
		FUNC14("You are currently not connected to a database.");
		return 0;
	}

	FUNC11();

	if (pset.timing)
		FUNC3(before);

	res = FUNC7(pset.db, query);

	FUNC10();

	if (!FUNC0(res))
	{
		FUNC1(res);
		return 0;
	}

	if (pset.timing)
	{
		FUNC3(after);
		FUNC4(after, before);
		elapsed_msec = FUNC2(after);
	}

	/*
	 * If SIGINT is sent while the query is processing, the interrupt will be
	 * consumed.  The user's intention, though, is to cancel the entire watch
	 * process, so detect a sent cancellation request and exit in this case.
	 */
	if (cancel_pressed)
	{
		FUNC5(res);
		return 0;
	}

	switch (FUNC8(res))
	{
		case PGRES_TUPLES_OK:
			FUNC15(res, opt, pset.queryFout, false, pset.logfile);
			break;

		case PGRES_COMMAND_OK:
			FUNC13(pset.queryFout, "%s\n%s\n\n", opt->title, FUNC6(res));
			break;

		case PGRES_EMPTY_QUERY:
			FUNC14("\\watch cannot be used with an empty query");
			FUNC5(res);
			return -1;

		case PGRES_COPY_OUT:
		case PGRES_COPY_IN:
		case PGRES_COPY_BOTH:
			FUNC14("\\watch cannot be used with COPY");
			FUNC5(res);
			return -1;

		default:
			FUNC14("unexpected result status for \\watch");
			FUNC5(res);
			return -1;
	}

	FUNC5(res);

	FUNC12(pset.queryFout);

	/* Possible microtiming output */
	if (pset.timing)
		FUNC9(elapsed_msec);

	return 1;
}