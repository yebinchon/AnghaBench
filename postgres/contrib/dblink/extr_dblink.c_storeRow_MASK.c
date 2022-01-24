#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char** cstrs; int /*<<< orphan*/  tmpcontext; int /*<<< orphan*/ * tuplestore; int /*<<< orphan*/  attinmeta; TYPE_6__* fcinfo; } ;
typedef  TYPE_2__ storeInfo ;
typedef  TYPE_3__* TupleDesc ;
struct TYPE_15__ {scalar_t__ resultinfo; } ;
struct TYPE_14__ {TYPE_3__* setDesc; int /*<<< orphan*/ * setResult; TYPE_1__* econtext; } ;
struct TYPE_13__ {int natts; } ;
struct TYPE_11__ {int /*<<< orphan*/  ecxt_per_query_memory; } ;
typedef  TYPE_4__ ReturnSetInfo ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char**) ; 
 TYPE_3__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
#define  TYPEFUNC_COMPOSITE 129 
#define  TYPEFUNC_RECORD 128 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_3__**) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char**) ; 
 int /*<<< orphan*/ * FUNC17 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  work_mem ; 

__attribute__((used)) static void
FUNC20(volatile storeInfo *sinfo, PGresult *res, bool first)
{
	int			nfields = FUNC7(res);
	HeapTuple	tuple;
	int			i;
	MemoryContext oldcontext;

	if (first)
	{
		/* Prepare for new result set */
		ReturnSetInfo *rsinfo = (ReturnSetInfo *) sinfo->fcinfo->resultinfo;
		TupleDesc	tupdesc;

		/*
		 * It's possible to get more than one result set if the query string
		 * contained multiple SQL commands.  In that case, we follow PQexec's
		 * traditional behavior of throwing away all but the last result.
		 */
		if (sinfo->tuplestore)
			FUNC18(sinfo->tuplestore);
		sinfo->tuplestore = NULL;

		/* get a tuple descriptor for our result type */
		switch (FUNC14(sinfo->fcinfo, NULL, &tupdesc))
		{
			case TYPEFUNC_COMPOSITE:
				/* success */
				break;
			case TYPEFUNC_RECORD:
				/* failed to determine actual type of RECORD */
				FUNC11(ERROR,
						(FUNC12(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC13("function returning record called in context "
								"that cannot accept type record")));
				break;
			default:
				/* result type isn't composite */
				FUNC10(ERROR, "return type must be a row type");
				break;
		}

		/* make sure we have a persistent copy of the tupdesc */
		tupdesc = FUNC2(tupdesc);

		/* check result and tuple descriptor have the same number of columns */
		if (nfields != tupdesc->natts)
			FUNC11(ERROR,
					(FUNC12(ERRCODE_DATATYPE_MISMATCH),
					 FUNC13("remote query result rowtype does not match "
							"the specified FROM clause rowtype")));

		/* Prepare attinmeta for later data conversions */
		sinfo->attinmeta = FUNC9(tupdesc);

		/* Create a new, empty tuplestore */
		oldcontext = FUNC4(rsinfo->econtext->ecxt_per_query_memory);
		sinfo->tuplestore = FUNC17(true, false, work_mem);
		rsinfo->setResult = sinfo->tuplestore;
		rsinfo->setDesc = tupdesc;
		FUNC4(oldcontext);

		/* Done if empty resultset */
		if (FUNC8(res) == 0)
			return;

		/*
		 * Set up sufficiently-wide string pointers array; this won't change
		 * in size so it's easy to preallocate.
		 */
		if (sinfo->cstrs)
			FUNC16(sinfo->cstrs);
		sinfo->cstrs = (char **) FUNC15(nfields * sizeof(char *));
	}

	/* Should have a single-row result if we get here */
	FUNC0(FUNC8(res) == 1);

	/*
	 * Do the following work in a temp context that we reset after each tuple.
	 * This cleans up not only the data we have direct access to, but any
	 * cruft the I/O functions might leak.
	 */
	oldcontext = FUNC4(sinfo->tmpcontext);

	/*
	 * Fill cstrs with null-terminated strings of column values.
	 */
	for (i = 0; i < nfields; i++)
	{
		if (FUNC5(res, 0, i))
			sinfo->cstrs[i] = NULL;
		else
			sinfo->cstrs[i] = FUNC6(res, 0, i);
	}

	/* Convert row to a tuple, and add it to the tuplestore */
	tuple = FUNC1(sinfo->attinmeta, sinfo->cstrs);

	FUNC19(sinfo->tuplestore, tuple);

	/* Clean up */
	FUNC4(oldcontext);
	FUNC3(sinfo->tmpcontext);
}