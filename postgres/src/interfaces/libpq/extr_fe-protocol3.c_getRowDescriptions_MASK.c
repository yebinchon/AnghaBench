#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int16 ;
struct TYPE_19__ {int /*<<< orphan*/  data; } ;
struct TYPE_18__ {scalar_t__ queryclass; scalar_t__ inCursor; scalar_t__ inStart; int /*<<< orphan*/  errorMessage; TYPE_1__* result; int /*<<< orphan*/  asyncStatus; TYPE_7__ workBuffer; } ;
struct TYPE_17__ {int tableid; int columnid; int format; int typid; int typlen; int atttypmod; int /*<<< orphan*/  name; } ;
struct TYPE_16__ {int numAttributes; int binary; TYPE_2__* attDescs; } ;
typedef  TYPE_1__ PGresult ;
typedef  TYPE_2__ PGresAttDesc ;
typedef  TYPE_3__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PGASYNC_READY ; 
 scalar_t__ PGQUERY_DESCRIBE ; 
 int /*<<< orphan*/  PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int*,int,TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_7__*,TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static int
FUNC11(PGconn *conn, int msgLength)
{
	PGresult   *result;
	int			nfields;
	const char *errmsg;
	int			i;

	/*
	 * When doing Describe for a prepared statement, there'll already be a
	 * PGresult created by getParamDescriptions, and we should fill data into
	 * that.  Otherwise, create a new, empty PGresult.
	 */
	if (conn->queryclass == PGQUERY_DESCRIBE)
	{
		if (conn->result)
			result = conn->result;
		else
			result = FUNC2(conn, PGRES_COMMAND_OK);
	}
	else
		result = FUNC2(conn, PGRES_TUPLES_OK);
	if (!result)
	{
		errmsg = NULL;			/* means "out of memory", see below */
		goto advance_and_error;
	}

	/* parseInput already read the 'T' label and message length. */
	/* the next two bytes are the number of fields */
	if (FUNC5(&(result->numAttributes), 2, conn))
	{
		/* We should not run out of data here, so complain */
		errmsg = FUNC3("insufficient data in \"T\" message");
		goto advance_and_error;
	}
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

	/* result->binary is true only if ALL columns are binary */
	result->binary = (nfields > 0) ? 1 : 0;

	/* get type info */
	for (i = 0; i < nfields; i++)
	{
		int			tableid;
		int			columnid;
		int			typid;
		int			typlen;
		int			atttypmod;
		int			format;

		if (FUNC6(&conn->workBuffer, conn) ||
			FUNC5(&tableid, 4, conn) ||
			FUNC5(&columnid, 2, conn) ||
			FUNC5(&typid, 4, conn) ||
			FUNC5(&typlen, 2, conn) ||
			FUNC5(&atttypmod, 4, conn) ||
			FUNC5(&format, 2, conn))
		{
			/* We should not run out of data here, so complain */
			errmsg = FUNC3("insufficient data in \"T\" message");
			goto advance_and_error;
		}

		/*
		 * Since pqGetInt treats 2-byte integers as unsigned, we need to
		 * coerce these results to signed form.
		 */
		columnid = (int) ((int16) columnid);
		typlen = (int) ((int16) typlen);
		format = (int) ((int16) format);

		result->attDescs[i].name = FUNC8(result,
												  conn->workBuffer.data);
		if (!result->attDescs[i].name)
		{
			errmsg = NULL;		/* means "out of memory", see below */
			goto advance_and_error;
		}
		result->attDescs[i].tableid = tableid;
		result->attDescs[i].columnid = columnid;
		result->attDescs[i].format = format;
		result->attDescs[i].typid = typid;
		result->attDescs[i].typlen = typlen;
		result->attDescs[i].atttypmod = atttypmod;

		if (format != 1)
			result->binary = 0;
	}

	/* Sanity check that we absorbed all the data */
	if (conn->inCursor != conn->inStart + 5 + msgLength)
	{
		errmsg = FUNC3("extraneous data in \"T\" message");
		goto advance_and_error;
	}

	/* Success! */
	conn->result = result;

	/* Advance inStart to show that the "T" message has been processed. */
	conn->inStart = conn->inCursor;

	/*
	 * If we're doing a Describe, we're done, and ready to pass the result
	 * back to the client.
	 */
	if (conn->queryclass == PGQUERY_DESCRIBE)
	{
		conn->asyncStatus = PGASYNC_READY;
		return 0;
	}

	/*
	 * We could perform additional setup for the new result set here, but for
	 * now there's nothing else to do.
	 */

	/* And we're done. */
	return 0;

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
		errmsg = FUNC3("out of memory for query result");

	FUNC10(&conn->errorMessage, "%s\n", errmsg);
	FUNC9(conn);

	/*
	 * Return zero to allow input parsing to continue.  Subsequent "D"
	 * messages will be ignored until we get to end of data, since an error
	 * result is already set up.
	 */
	return 0;
}