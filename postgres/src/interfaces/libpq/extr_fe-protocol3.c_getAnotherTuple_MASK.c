#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int rowBufLen; scalar_t__ inBuffer; scalar_t__ inCursor; scalar_t__ inStart; int /*<<< orphan*/  errorMessage; TYPE_2__* rowBuf; TYPE_1__* result; } ;
struct TYPE_12__ {int len; scalar_t__ value; } ;
struct TYPE_11__ {int numAttributes; } ;
typedef  TYPE_1__ PGresult ;
typedef  TYPE_2__ PGdataValue ;
typedef  TYPE_3__ PGconn ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int*,int,TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int) ; 

__attribute__((used)) static int
FUNC8(PGconn *conn, int msgLength)
{
	PGresult   *result = conn->result;
	int			nfields = result->numAttributes;
	const char *errmsg;
	PGdataValue *rowbuf;
	int			tupnfields;		/* # fields from tuple */
	int			vlen;			/* length of the current field value */
	int			i;

	/* Get the field count and make sure it's what we expect */
	if (FUNC2(&tupnfields, 2, conn))
	{
		/* We should not run out of data here, so complain */
		errmsg = FUNC0("insufficient data in \"D\" message");
		goto advance_and_error;
	}

	if (tupnfields != nfields)
	{
		errmsg = FUNC0("unexpected field count in \"D\" message");
		goto advance_and_error;
	}

	/* Resize row buffer if needed */
	rowbuf = conn->rowBuf;
	if (nfields > conn->rowBufLen)
	{
		rowbuf = (PGdataValue *) FUNC7(rowbuf,
										 nfields * sizeof(PGdataValue));
		if (!rowbuf)
		{
			errmsg = NULL;		/* means "out of memory", see below */
			goto advance_and_error;
		}
		conn->rowBuf = rowbuf;
		conn->rowBufLen = nfields;
	}

	/* Scan the fields */
	for (i = 0; i < nfields; i++)
	{
		/* get the value length */
		if (FUNC2(&vlen, 4, conn))
		{
			/* We should not run out of data here, so complain */
			errmsg = FUNC0("insufficient data in \"D\" message");
			goto advance_and_error;
		}
		rowbuf[i].len = vlen;

		/*
		 * rowbuf[i].value always points to the next address in the data
		 * buffer even if the value is NULL.  This allows row processors to
		 * estimate data sizes more easily.
		 */
		rowbuf[i].value = conn->inBuffer + conn->inCursor;

		/* Skip over the data value */
		if (vlen > 0)
		{
			if (FUNC5(vlen, conn))
			{
				/* We should not run out of data here, so complain */
				errmsg = FUNC0("insufficient data in \"D\" message");
				goto advance_and_error;
			}
		}
	}

	/* Sanity check that we absorbed all the data */
	if (conn->inCursor != conn->inStart + 5 + msgLength)
	{
		errmsg = FUNC0("extraneous data in \"D\" message");
		goto advance_and_error;
	}

	/* Advance inStart to show that the "D" message has been processed. */
	conn->inStart = conn->inCursor;

	/* Process the collected row */
	errmsg = NULL;
	if (FUNC3(conn, &errmsg))
		return 0;				/* normal, successful exit */

	goto set_error_result;		/* pqRowProcessor failed, report it */

advance_and_error:
	/* Discard the failed message by pretending we read it */
	conn->inStart += 5 + msgLength;

set_error_result:

	/*
	 * Replace partially constructed result with an error result. First
	 * discard the old result to try to win back some memory.
	 */
	FUNC1(conn);

	/*
	 * If preceding code didn't provide an error message, assume "out of
	 * memory" was meant.  The advantage of having this special case is that
	 * freeing the old result first greatly improves the odds that gettext()
	 * will succeed in providing a translation.
	 */
	if (!errmsg)
		errmsg = FUNC0("out of memory for query result");

	FUNC6(&conn->errorMessage, "%s\n", errmsg);
	FUNC4(conn);

	/*
	 * Return zero to allow input parsing to continue.  Subsequent "D"
	 * messages will be ignored until we get to end of data, since an error
	 * result is already set up.
	 */
	return 0;
}