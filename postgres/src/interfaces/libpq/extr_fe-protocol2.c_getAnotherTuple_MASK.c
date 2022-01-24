#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  std_bitmap ;
struct TYPE_17__ {int rowBufLen; int /*<<< orphan*/  asyncStatus; TYPE_2__* result; int /*<<< orphan*/  errorMessage; scalar_t__ inEnd; scalar_t__ inStart; scalar_t__ inCursor; scalar_t__ inBuffer; TYPE_3__* rowBuf; } ;
struct TYPE_16__ {int len; scalar_t__ value; } ;
struct TYPE_15__ {int numAttributes; int binary; TYPE_1__* attDescs; } ;
struct TYPE_14__ {int format; } ;
typedef  TYPE_2__ PGresult ;
typedef  TYPE_3__ PGdataValue ;
typedef  TYPE_4__ PGconn ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int EOF ; 
 int NULL_LEN ; 
 int /*<<< orphan*/  PGASYNC_READY ; 
 int /*<<< orphan*/  PGRES_FATAL_ERROR ; 
 TYPE_2__* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (int*,int,TYPE_4__*) ; 
 scalar_t__ FUNC6 (char*,size_t,TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,char const**) ; 
 scalar_t__ FUNC8 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int) ; 

__attribute__((used)) static int
FUNC11(PGconn *conn, bool binary)
{
	PGresult   *result = conn->result;
	int			nfields = result->numAttributes;
	const char *errmsg;
	PGdataValue *rowbuf;

	/* the backend sends us a bitmap of which attributes are null */
	char		std_bitmap[64]; /* used unless it doesn't fit */
	char	   *bitmap = std_bitmap;
	int			i;
	size_t		nbytes;			/* the number of bytes in bitmap  */
	char		bmap;			/* One byte of the bitmap */
	int			bitmap_index;	/* Its index */
	int			bitcnt;			/* number of bits examined in current byte */
	int			vlen;			/* length of the current field value */

	/* Resize row buffer if needed */
	rowbuf = conn->rowBuf;
	if (nfields > conn->rowBufLen)
	{
		rowbuf = (PGdataValue *) FUNC10(rowbuf,
										 nfields * sizeof(PGdataValue));
		if (!rowbuf)
		{
			errmsg = NULL;		/* means "out of memory", see below */
			goto advance_and_error;
		}
		conn->rowBuf = rowbuf;
		conn->rowBufLen = nfields;
	}

	/* Save format specifier */
	result->binary = binary;

	/*
	 * If it's binary, fix the column format indicators.  We assume the
	 * backend will consistently send either B or D, not a mix.
	 */
	if (binary)
	{
		for (i = 0; i < nfields; i++)
			result->attDescs[i].format = 1;
	}

	/* Get the null-value bitmap */
	nbytes = (nfields + BITS_PER_BYTE - 1) / BITS_PER_BYTE;
	/* malloc() only for unusually large field counts... */
	if (nbytes > sizeof(std_bitmap))
	{
		bitmap = (char *) FUNC3(nbytes);
		if (!bitmap)
		{
			errmsg = NULL;		/* means "out of memory", see below */
			goto advance_and_error;
		}
	}

	if (FUNC6(bitmap, nbytes, conn))
		goto EOFexit;

	/* Scan the fields */
	bitmap_index = 0;
	bmap = bitmap[bitmap_index];
	bitcnt = 0;

	for (i = 0; i < nfields; i++)
	{
		/* get the value length */
		if (!(bmap & 0200))
			vlen = NULL_LEN;
		else if (FUNC5(&vlen, 4, conn))
			goto EOFexit;
		else
		{
			if (!binary)
				vlen = vlen - 4;
			if (vlen < 0)
				vlen = 0;
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
			if (FUNC8(vlen, conn))
				goto EOFexit;
		}

		/* advance the bitmap stuff */
		bitcnt++;
		if (bitcnt == BITS_PER_BYTE)
		{
			bitmap_index++;
			bmap = bitmap[bitmap_index];
			bitcnt = 0;
		}
		else
			bmap <<= 1;
	}

	/* Release bitmap now if we allocated it */
	if (bitmap != std_bitmap)
		FUNC1(bitmap);
	bitmap = NULL;

	/* Advance inStart to show that the "D" message has been processed. */
	conn->inStart = conn->inCursor;

	/* Process the collected row */
	errmsg = NULL;
	if (FUNC7(conn, &errmsg))
		return 0;				/* normal, successful exit */

	goto set_error_result;		/* pqRowProcessor failed, report it */

advance_and_error:

	/*
	 * Discard the failed message.  Unfortunately we don't know for sure where
	 * the end is, so just throw away everything in the input buffer. This is
	 * not very desirable but it's the best we can do in protocol v2.
	 */
	conn->inStart = conn->inEnd;

set_error_result:

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
		errmsg = FUNC2("out of memory for query result");

	FUNC9(&conn->errorMessage, "%s\n", errmsg);

	/*
	 * XXX: if PQmakeEmptyPGresult() fails, there's probably not much we can
	 * do to recover...
	 */
	conn->result = FUNC0(conn, PGRES_FATAL_ERROR);
	conn->asyncStatus = PGASYNC_READY;

EOFexit:
	if (bitmap != NULL && bitmap != std_bitmap)
		FUNC1(bitmap);
	return EOF;
}