#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ inCursor; scalar_t__ inStart; int /*<<< orphan*/  errorMessage; TYPE_1__* result; } ;
struct TYPE_14__ {int typid; } ;
struct TYPE_13__ {int numParameters; TYPE_2__* paramDescs; } ;
typedef  TYPE_1__ PGresult ;
typedef  TYPE_2__ PGresParamDesc ;
typedef  TYPE_3__ PGconn ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int*,int,TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static int
FUNC9(PGconn *conn, int msgLength)
{
	PGresult   *result;
	const char *errmsg = NULL;	/* means "out of memory", see below */
	int			nparams;
	int			i;

	result = FUNC2(conn, PGRES_COMMAND_OK);
	if (!result)
		goto advance_and_error;

	/* parseInput already read the 't' label and message length. */
	/* the next two bytes are the number of parameters */
	if (FUNC5(&(result->numParameters), 2, conn))
		goto not_enough_data;
	nparams = result->numParameters;

	/* allocate space for the parameter descriptors */
	if (nparams > 0)
	{
		result->paramDescs = (PGresParamDesc *)
			FUNC6(result, nparams * sizeof(PGresParamDesc), true);
		if (!result->paramDescs)
			goto advance_and_error;
		FUNC0(result->paramDescs, 0, nparams * sizeof(PGresParamDesc));
	}

	/* get parameter info */
	for (i = 0; i < nparams; i++)
	{
		int			typid;

		if (FUNC5(&typid, 4, conn))
			goto not_enough_data;
		result->paramDescs[i].typid = typid;
	}

	/* Sanity check that we absorbed all the data */
	if (conn->inCursor != conn->inStart + 5 + msgLength)
	{
		errmsg = FUNC3("extraneous data in \"t\" message");
		goto advance_and_error;
	}

	/* Success! */
	conn->result = result;

	/* Advance inStart to show that the "t" message has been processed. */
	conn->inStart = conn->inCursor;

	return 0;

not_enough_data:
	FUNC1(result);
	return EOF;

advance_and_error:
	/* Discard unsaved result, if any */
	if (result && result != conn->result)
		FUNC1(result);

	/* Discard the failed message by pretending we read it */
	conn->inStart += 5 + msgLength;

	/*
	 * Replace partially constructed result with an error result. First
	 * discard the old result to try to win back some memory.
	 */
	FUNC4(conn);

	/*
	 * If preceding code didn't provide an error message, assume "out of
	 * memory" was meant.  The advantage of having this special case is that
	 * freeing the old result first greatly improves the odds that gettext()
	 * will succeed in providing a translation.
	 */
	if (!errmsg)
		errmsg = FUNC3("out of memory");
	FUNC8(&conn->errorMessage, "%s\n", errmsg);
	FUNC7(conn);

	/*
	 * Return zero to allow input parsing to continue.  Essentially, we've
	 * replaced the COMMAND_OK result with an error result, but since this
	 * doesn't affect the protocol state, it's fine.
	 */
	return 0;
}