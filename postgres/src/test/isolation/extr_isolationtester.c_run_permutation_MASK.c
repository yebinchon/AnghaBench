#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int nsessions; int nsetupsqls; scalar_t__ teardownsql; TYPE_1__** sessions; scalar_t__* setupsqls; } ;
typedef  TYPE_2__ TestSpec ;
struct TYPE_17__ {int used; char* name; int session; int /*<<< orphan*/  sql; } ;
struct TYPE_15__ {char* name; scalar_t__ teardownsql; scalar_t__ setupsql; } ;
typedef  TYPE_3__ Step ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int STEP_NONBLOCK ; 
 int STEP_RETRY ; 
 int /*<<< orphan*/ ** conns ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__**,TYPE_3__**,int) ; 
 TYPE_3__** FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int,TYPE_3__**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC14 (TYPE_2__*,TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC15(TestSpec *testspec, int nsteps, Step **steps)
{
	PGresult   *res;
	int			i;
	int			w;
	int			nwaiting = 0;
	int			nerrorstep = 0;
	Step	  **waiting;
	Step	  **errorstep;

	waiting = FUNC9(sizeof(Step *) * testspec->nsessions);
	errorstep = FUNC9(sizeof(Step *) * testspec->nsessions);

	FUNC11("\nstarting permutation:");
	for (i = 0; i < nsteps; i++)
	{
		/* Track the permutation as in-use */
		steps[i]->used = true;
		FUNC11(" %s", steps[i]->name);
	}
	FUNC11("\n");

	/* Perform setup */
	for (i = 0; i < testspec->nsetupsqls; i++)
	{
		res = FUNC2(conns[0], testspec->setupsqls[i]);
		if (FUNC3(res) == PGRES_TUPLES_OK)
		{
			FUNC10(res);
		}
		else if (FUNC3(res) != PGRES_COMMAND_OK)
		{
			FUNC6(stderr, "setup failed: %s", FUNC1(conns[0]));
			FUNC5(1);
		}
		FUNC0(res);
	}

	/* Perform per-session setup */
	for (i = 0; i < testspec->nsessions; i++)
	{
		if (testspec->sessions[i]->setupsql)
		{
			res = FUNC2(conns[i + 1], testspec->sessions[i]->setupsql);
			if (FUNC3(res) == PGRES_TUPLES_OK)
			{
				FUNC10(res);
			}
			else if (FUNC3(res) != PGRES_COMMAND_OK)
			{
				FUNC6(stderr, "setup of session %s failed: %s",
						testspec->sessions[i]->name,
						FUNC1(conns[i + 1]));
				FUNC5(1);
			}
			FUNC0(res);
		}
	}

	/* Perform steps */
	for (i = 0; i < nsteps; i++)
	{
		Step	   *step = steps[i];
		PGconn	   *conn = conns[1 + step->session];
		Step	   *oldstep = NULL;
		bool		mustwait;

		/*
		 * Check whether the session that needs to perform the next step is
		 * still blocked on an earlier step.  If so, wait for it to finish.
		 *
		 * (In older versions of this tool, we allowed precisely one session
		 * to be waiting at a time.  If we reached a step that required that
		 * session to execute the next command, we would declare the whole
		 * permutation invalid, cancel everything, and move on to the next
		 * one.  Unfortunately, that made it impossible to test the deadlock
		 * detector using this framework, unless the number of processes
		 * involved in the deadlock was precisely two.  We now assume that if
		 * we reach a step that is still blocked, we need to wait for it to
		 * unblock itself.)
		 */
		for (w = 0; w < nwaiting; ++w)
		{
			if (step->session == waiting[w]->session)
			{
				oldstep = waiting[w];

				/* Wait for previous step on this connection. */
				FUNC14(testspec, oldstep, STEP_RETRY);

				/* Remove that step from the waiting[] array. */
				if (w + 1 < nwaiting)
					FUNC8(&waiting[w], &waiting[w + 1],
							(nwaiting - (w + 1)) * sizeof(Step *));
				nwaiting--;

				break;
			}
		}
		if (oldstep != NULL)
		{
			/*
			 * Check for completion of any steps that were previously waiting.
			 * Remove any that have completed from waiting[], and include them
			 * in the list for report_multiple_error_messages().
			 */
			w = 0;
			nerrorstep = 0;
			while (w < nwaiting)
			{
				if (FUNC14(testspec, waiting[w],
									  STEP_NONBLOCK | STEP_RETRY))
				{
					/* Still blocked on a lock, leave it alone. */
					w++;
				}
				else
				{
					/* This one finished, too! */
					errorstep[nerrorstep++] = waiting[w];
					if (w + 1 < nwaiting)
						FUNC8(&waiting[w], &waiting[w + 1],
								(nwaiting - (w + 1)) * sizeof(Step *));
					nwaiting--;
				}
			}

			/* Report all errors together. */
			FUNC13(oldstep, nerrorstep, errorstep);
		}

		/* Send the query for this step. */
		if (!FUNC4(conn, step->sql))
		{
			FUNC6(stdout, "failed to send query for step %s: %s\n",
					step->name, FUNC1(conn));
			FUNC5(1);
		}

		/* Try to complete this step without blocking.  */
		mustwait = FUNC14(testspec, step, STEP_NONBLOCK);

		/* Check for completion of any steps that were previously waiting. */
		w = 0;
		nerrorstep = 0;
		while (w < nwaiting)
		{
			if (FUNC14(testspec, waiting[w],
								  STEP_NONBLOCK | STEP_RETRY))
				w++;
			else
			{
				errorstep[nerrorstep++] = waiting[w];
				if (w + 1 < nwaiting)
					FUNC8(&waiting[w], &waiting[w + 1],
							(nwaiting - (w + 1)) * sizeof(Step *));
				nwaiting--;
			}
		}

		/* Report any error from this step, and any steps that it unblocked. */
		FUNC13(step, nerrorstep, errorstep);

		/* If this step is waiting, add it to the array of waiters. */
		if (mustwait)
			waiting[nwaiting++] = step;
	}

	/* Wait for any remaining queries. */
	for (w = 0; w < nwaiting; ++w)
	{
		FUNC14(testspec, waiting[w], STEP_RETRY);
		FUNC12(waiting[w]);
	}

	/* Perform per-session teardown */
	for (i = 0; i < testspec->nsessions; i++)
	{
		if (testspec->sessions[i]->teardownsql)
		{
			res = FUNC2(conns[i + 1], testspec->sessions[i]->teardownsql);
			if (FUNC3(res) == PGRES_TUPLES_OK)
			{
				FUNC10(res);
			}
			else if (FUNC3(res) != PGRES_COMMAND_OK)
			{
				FUNC6(stderr, "teardown of session %s failed: %s",
						testspec->sessions[i]->name,
						FUNC1(conns[i + 1]));
				/* don't exit on teardown failure */
			}
			FUNC0(res);
		}
	}

	/* Perform teardown */
	if (testspec->teardownsql)
	{
		res = FUNC2(conns[0], testspec->teardownsql);
		if (FUNC3(res) == PGRES_TUPLES_OK)
		{
			FUNC10(res);
		}
		else if (FUNC3(res) != PGRES_COMMAND_OK)
		{
			FUNC6(stderr, "teardown failed: %s",
					FUNC1(conns[0]));
			/* don't exit on teardown failure */
		}
		FUNC0(res);
	}

	FUNC7(waiting);
	FUNC7(errorstep);
}