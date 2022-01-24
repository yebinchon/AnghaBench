#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int16 ;
struct TYPE_17__ {int /*<<< orphan*/  data; } ;
struct TYPE_16__ {TYPE_1__* result; int /*<<< orphan*/  asyncStatus; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  inEnd; int /*<<< orphan*/  inStart; int /*<<< orphan*/  inCursor; TYPE_6__ workBuffer; } ;
struct TYPE_15__ {int typid; int typlen; int atttypmod; scalar_t__ format; scalar_t__ columnid; scalar_t__ tableid; int /*<<< orphan*/  name; } ;
struct TYPE_14__ {int numAttributes; TYPE_2__* attDescs; } ;
typedef  TYPE_1__ PGresult ;
typedef  TYPE_2__ PGresAttDesc ;
typedef  TYPE_3__ PGconn ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PGASYNC_READY ; 
 int /*<<< orphan*/  PGRES_FATAL_ERROR ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int*,int,TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_6__*,TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static int
FUNC10(PGconn *conn)
{
	PGresult   *result;
	int			nfields;
	const char *errmsg;
	int			i;

	result = FUNC2(conn, PGRES_TUPLES_OK);
	if (!result)
	{
		errmsg = NULL;			/* means "out of memory", see below */
		goto advance_and_error;
	}

	/* parseInput already read the 'T' label. */
	/* the next two bytes are the number of fields	*/
	if (FUNC5(&(result->numAttributes), 2, conn))
		goto EOFexit;
	nfields = result->numAttributes;

	/* allocate space for the attribute descriptors */
	if (nfields > 0)
	{
		result->attDescs = (PGresAttDesc *)
			FUNC7(result, nfields * sizeof(PGresAttDesc), true);
		if (!result->attDescs)
		{
			errmsg = NULL;		/* means "out of memory", see below */
			goto advance_and_error;
		}
		FUNC0(result->attDescs, 0, nfields * sizeof(PGresAttDesc));
	}

	/* get type info */
	for (i = 0; i < nfields; i++)
	{
		int			typid;
		int			typlen;
		int			atttypmod;

		if (FUNC6(&conn->workBuffer, conn) ||
			FUNC5(&typid, 4, conn) ||
			FUNC5(&typlen, 2, conn) ||
			FUNC5(&atttypmod, 4, conn))
			goto EOFexit;

		/*
		 * Since pqGetInt treats 2-byte integers as unsigned, we need to
		 * coerce the result to signed form.
		 */
		typlen = (int) ((int16) typlen);

		result->attDescs[i].name = FUNC8(result,
												  conn->workBuffer.data);
		if (!result->attDescs[i].name)
		{
			errmsg = NULL;		/* means "out of memory", see below */
			goto advance_and_error;
		}
		result->attDescs[i].tableid = 0;
		result->attDescs[i].columnid = 0;
		result->attDescs[i].format = 0;
		result->attDescs[i].typid = typid;
		result->attDescs[i].typlen = typlen;
		result->attDescs[i].atttypmod = atttypmod;
	}

	/* Success! */
	conn->result = result;

	/* Advance inStart to show that the "T" message has been processed. */
	conn->inStart = conn->inCursor;

	/*
	 * We could perform additional setup for the new result set here, but for
	 * now there's nothing else to do.
	 */

	/* And we're done. */
	return 0;

advance_and_error:

	/*
	 * Discard the failed message.  Unfortunately we don't know for sure where
	 * the end is, so just throw away everything in the input buffer. This is
	 * not very desirable but it's the best we can do in protocol v2.
	 */
	conn->inStart = conn->inEnd;

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
		errmsg = FUNC3("out of memory for query result");

	FUNC9(&conn->errorMessage, "%s\n", errmsg);

	/*
	 * XXX: if PQmakeEmptyPGresult() fails, there's probably not much we can
	 * do to recover...
	 */
	conn->result = FUNC2(conn, PGRES_FATAL_ERROR);
	conn->asyncStatus = PGASYNC_READY;

EOFexit:
	if (result && result != conn->result)
		FUNC1(result);
	return EOF;
}