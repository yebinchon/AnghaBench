#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  pidstring ;
typedef  int int64 ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_10__ {int nsessions; TYPE_1__** sessions; } ;
typedef  TYPE_2__ TestSpec ;
struct TYPE_12__ {scalar_t__ be_pid; char* relname; char* extra; } ;
struct TYPE_11__ {int session; char* name; char* sql; char* errormsg; } ;
struct TYPE_9__ {char* name; } ;
typedef  TYPE_3__ Step ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ PGnotify ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  PGcancel ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  PGRES_COMMAND_OK 130 
#define  PGRES_FATAL_ERROR 129 
#define  PGRES_TUPLES_OK 128 
 int /*<<< orphan*/  PG_DIAG_MESSAGE_PRIMARY ; 
 int /*<<< orphan*/  PG_DIAG_SEVERITY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 char* FUNC15 (int) ; 
 char* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PREP_WAITING ; 
 int STEP_NONBLOCK ; 
 int STEP_RETRY ; 
 int USECS_PER_SEC ; 
 int /*<<< orphan*/ * backend_pid_strs ; 
 scalar_t__* backend_pids ; 
 int /*<<< orphan*/ ** conns ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct timeval*,int /*<<< orphan*/ *) ; 
 char* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 
 char* FUNC26 (char*,char const*,char const*) ; 
 int FUNC27 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC28 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC29 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC30(TestSpec *testspec, Step *step, int flags)
{
	PGconn	   *conn = conns[1 + step->session];
	fd_set		read_set;
	struct timeval start_time;
	struct timeval timeout;
	int			sock = FUNC19(conn);
	int			ret;
	PGresult   *res;
	PGnotify   *notify;
	bool		canceled = false;

	if (sock < 0)
	{
		FUNC21(stderr, "invalid socket: %s", FUNC5(conn));
		FUNC20(1);
	}

	FUNC22(&start_time, NULL);
	FUNC1(&read_set);

	while (FUNC12(conn))
	{
		FUNC0(sock, &read_set);
		timeout.tv_sec = 0;
		timeout.tv_usec = 10000;	/* Check for lock waits every 10ms. */

		ret = FUNC27(sock + 1, &read_set, NULL, NULL, &timeout);
		if (ret < 0)			/* error in select() */
		{
			if (errno == EINTR)
				continue;
			FUNC21(stderr, "select failed: %s\n", FUNC29(errno));
			FUNC20(1);
		}
		else if (ret == 0)		/* select() timeout: check for lock wait */
		{
			struct timeval current_time;
			int64		td;

			/* If it's OK for the step to block, check whether it has. */
			if (flags & STEP_NONBLOCK)
			{
				bool		waiting;

				res = FUNC6(conns[0], PREP_WAITING, 1,
									 &backend_pid_strs[step->session + 1],
									 NULL, NULL, 0);
				if (FUNC18(res) != PGRES_TUPLES_OK ||
					FUNC14(res) != 1)
				{
					FUNC21(stderr, "lock wait query failed: %s",
							FUNC5(conns[0]));
					FUNC20(1);
				}
				waiting = ((FUNC11(res, 0, 0))[0] == 't');
				FUNC3(res);

				if (waiting)	/* waiting to acquire a lock */
				{
					/*
					 * Since it takes time to perform the lock-check query,
					 * some data --- notably, NOTICE messages --- might have
					 * arrived since we looked.  We must call PQconsumeInput
					 * and then PQisBusy to collect and process any such
					 * messages.  In the (unlikely) case that PQisBusy then
					 * returns false, we might as well go examine the
					 * available result.
					 */
					if (!FUNC4(conn))
					{
						FUNC21(stderr, "PQconsumeInput failed: %s\n",
								FUNC5(conn));
						FUNC20(1);
					}
					if (!FUNC12(conn))
						break;

					/*
					 * conn is still busy, so conclude that the step really is
					 * waiting.
					 */
					if (!(flags & STEP_RETRY))
						FUNC25("step %s: %s <waiting ...>\n",
							   step->name, step->sql);
					return true;
				}
				/* else, not waiting */
			}

			/* Figure out how long we've been waiting for this step. */
			FUNC22(&current_time, NULL);
			td = (int64) current_time.tv_sec - (int64) start_time.tv_sec;
			td *= USECS_PER_SEC;
			td += (int64) current_time.tv_usec - (int64) start_time.tv_usec;

			/*
			 * After 180 seconds, try to cancel the query.
			 *
			 * If the user tries to test an invalid permutation, we don't want
			 * to hang forever, especially when this is running in the
			 * buildfarm.  This will presumably lead to this permutation
			 * failing, but remaining permutations and tests should still be
			 * OK.
			 */
			if (td > 180 * USECS_PER_SEC && !canceled)
			{
				PGcancel   *cancel = FUNC9(conn);

				if (cancel != NULL)
				{
					char		buf[256];

					if (FUNC2(cancel, buf, sizeof(buf)))
						canceled = true;
					else
						FUNC21(stderr, "PQcancel failed: %s\n", buf);
					FUNC7(cancel);
				}
			}

			/*
			 * After 200 seconds, just give up and die.
			 *
			 * Since cleanup steps won't be run in this case, this may cause
			 * later tests to fail.  That stinks, but it's better than waiting
			 * forever for the server to respond to the cancel.
			 */
			if (td > 200 * USECS_PER_SEC)
			{
				FUNC21(stderr, "step %s timed out after 200 seconds\n",
						step->name);
				FUNC20(1);
			}
		}
		else if (!FUNC4(conn)) /* select(): data available */
		{
			FUNC21(stderr, "PQconsumeInput failed: %s\n",
					FUNC5(conn));
			FUNC20(1);
		}
	}

	if (flags & STEP_RETRY)
		FUNC25("step %s: <... completed>\n", step->name);
	else
		FUNC25("step %s: %s\n", step->name, step->sql);

	while ((res = FUNC10(conn)))
	{
		switch (FUNC18(res))
		{
			case PGRES_COMMAND_OK:
				break;
			case PGRES_TUPLES_OK:
				FUNC24(res);
				break;
			case PGRES_FATAL_ERROR:
				if (step->errormsg != NULL)
				{
					FUNC25("WARNING: this step had a leftover error message\n");
					FUNC25("%s\n", step->errormsg);
				}

				/*
				 * Detail may contain XID values, so we want to just show
				 * primary.  Beware however that libpq-generated error results
				 * may not contain subfields, only an old-style message.
				 */
				{
					const char *sev = FUNC16(res,
														 PG_DIAG_SEVERITY);
					const char *msg = FUNC16(res,
														 PG_DIAG_MESSAGE_PRIMARY);

					if (sev && msg)
						step->errormsg = FUNC26("%s:  %s", sev, msg);
					else
						step->errormsg = FUNC23(FUNC17(res));
				}
				break;
			default:
				FUNC25("unexpected result status: %s\n",
					   FUNC15(FUNC18(res)));
		}
		FUNC3(res);
	}

	/* Report any available NOTIFY messages, too */
	FUNC4(conn);
	while ((notify = FUNC13(conn)) != NULL)
	{
		/* Try to identify which session it came from */
		const char *sendername = NULL;
		char		pidstring[32];

		for (int i = 0; i < testspec->nsessions; i++)
		{
			if (notify->be_pid == backend_pids[i + 1])
			{
				sendername = testspec->sessions[i]->name;
				break;
			}
		}
		if (sendername == NULL)
		{
			/* Doesn't seem to be any test session, so show the hard way */
			FUNC28(pidstring, sizeof(pidstring), "PID %d", notify->be_pid);
			sendername = pidstring;
		}
		FUNC25("%s: NOTIFY \"%s\" with payload \"%s\" from %s\n",
			   testspec->sessions[step->session]->name,
			   notify->relname, notify->extra, sendername);
		FUNC8(notify);
		FUNC4(conn);
	}

	return false;
}