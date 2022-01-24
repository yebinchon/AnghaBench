#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  db; int /*<<< orphan*/ * cur_cmd_source; int /*<<< orphan*/ * copyStream; int /*<<< orphan*/ * queryFout; scalar_t__ gfname; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int ExecStatusType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  PGRES_COMMAND_OK 132 
#define  PGRES_COPY_IN 131 
#define  PGRES_COPY_OUT 130 
#define  PGRES_EMPTY_QUERY 129 
#define  PGRES_TUPLES_OK 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 TYPE_1__ pset ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static bool
FUNC17(PGresult **results)
{
	bool		success = true;
	bool		first_cycle = true;

	for (;;)
	{
		ExecStatusType result_status;
		bool		is_copy;
		PGresult   *next_result;

		if (!FUNC0(*results))
		{
			/*
			 * Failure at this point is always a server-side failure or a
			 * failure to submit the command string.  Either way, we're
			 * finished with this command string.
			 */
			success = false;
			break;
		}

		result_status = FUNC5(*results);
		switch (result_status)
		{
			case PGRES_EMPTY_QUERY:
			case PGRES_COMMAND_OK:
			case PGRES_TUPLES_OK:
				is_copy = false;
				break;

			case PGRES_COPY_OUT:
			case PGRES_COPY_IN:
				is_copy = true;
				break;

			default:
				/* AcceptResult() should have caught anything else. */
				is_copy = false;
				FUNC15("unexpected PQresultStatus: %d", result_status);
				break;
		}

		if (is_copy)
		{
			/*
			 * Marshal the COPY data.  Either subroutine will get the
			 * connection out of its COPY state, then call PQresultStatus()
			 * once and report any error.
			 *
			 * For COPY OUT, direct the output to pset.copyStream if it's set,
			 * otherwise to pset.gfname if it's set, otherwise to queryFout.
			 * For COPY IN, use pset.copyStream as data source if it's set,
			 * otherwise cur_cmd_source.
			 */
			FILE	   *copystream;
			PGresult   *copy_result;

			FUNC7();
			if (result_status == PGRES_COPY_OUT)
			{
				bool		need_close = false;
				bool		is_pipe = false;

				if (pset.copyStream)
				{
					/* invoked by \copy */
					copystream = pset.copyStream;
				}
				else if (pset.gfname)
				{
					/* invoked by \g */
					if (FUNC13(pset.gfname,
											&copystream, &is_pipe))
					{
						need_close = true;
						if (is_pipe)
							FUNC9();
					}
					else
						copystream = NULL;	/* discard COPY data entirely */
				}
				else
				{
					/* fall back to the generic query output stream */
					copystream = pset.queryFout;
				}

				success = FUNC12(pset.db,
										copystream,
										&copy_result)
					&& success
					&& (copystream != NULL);

				/*
				 * Suppress status printing if the report would go to the same
				 * place as the COPY data just went.  Note this doesn't
				 * prevent error reporting, since handleCopyOut did that.
				 */
				if (copystream == pset.queryFout)
				{
					FUNC3(copy_result);
					copy_result = NULL;
				}

				if (need_close)
				{
					/* close \g argument file/pipe */
					if (is_pipe)
					{
						FUNC14(copystream);
						FUNC16();
					}
					else
					{
						FUNC10(copystream);
					}
				}
			}
			else
			{
				/* COPY IN */
				copystream = pset.copyStream ? pset.copyStream : pset.cur_cmd_source;
				success = FUNC11(pset.db,
									   copystream,
									   FUNC2(*results),
									   &copy_result) && success;
			}
			FUNC6();

			/*
			 * Replace the PGRES_COPY_OUT/IN result with COPY command's exit
			 * status, or with NULL if we want to suppress printing anything.
			 */
			FUNC3(*results);
			*results = copy_result;
		}
		else if (first_cycle)
		{
			/* fast path: no COPY commands; PQexec visited all results */
			break;
		}

		/*
		 * Check PQgetResult() again.  In the typical case of a single-command
		 * string, it will return NULL.  Otherwise, we'll have other results
		 * to process that may include other COPYs.  We keep the last result.
		 */
		next_result = FUNC4(pset.db);
		if (!next_result)
			break;

		FUNC3(*results);
		*results = next_result;
		first_cycle = false;
	}

	FUNC8(*results, success);

	/* may need this to recover from conn loss during COPY */
	if (!first_cycle && !FUNC1())
		return false;

	return success;
}