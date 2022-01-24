#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Tuplestorestate ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_16__ {scalar_t__ resultinfo; } ;
struct TYPE_15__ {scalar_t__ returnMode; TYPE_2__* setDesc; int /*<<< orphan*/ * setResult; TYPE_1__* econtext; } ;
struct TYPE_14__ {int natts; } ;
struct TYPE_13__ {int /*<<< orphan*/  ecxt_per_query_memory; } ;
typedef  TYPE_3__ ReturnSetInfo ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_4__* FunctionCallInfo ;
typedef  int /*<<< orphan*/  AttrNumber ;
typedef  int /*<<< orphan*/  AttInMetadata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**) ; 
 TYPE_2__* FUNC2 (int) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ SFRM_Materialize ; 
 int /*<<< orphan*/  TEXTOID ; 
#define  TYPEFUNC_COMPOSITE 129 
#define  TYPEFUNC_RECORD 128 
 int /*<<< orphan*/ * FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int FUNC22 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_2__**) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/ * FUNC25 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  work_mem ; 

__attribute__((used)) static void
FUNC28(FunctionCallInfo fcinfo, PGconn *conn, PGresult *res)
{
	ReturnSetInfo *rsinfo = (ReturnSetInfo *) fcinfo->resultinfo;

	/* prepTuplestoreResult must have been called previously */
	FUNC0(rsinfo->returnMode == SFRM_Materialize);

	FUNC7();
	{
		TupleDesc	tupdesc;
		bool		is_sql_cmd;
		int			ntuples;
		int			nfields;

		if (FUNC14(res) == PGRES_COMMAND_OK)
		{
			is_sql_cmd = true;

			/*
			 * need a tuple descriptor representing one TEXT column to return
			 * the command status string as our result tuple
			 */
			tupdesc = FUNC2(1);
			FUNC16(tupdesc, (AttrNumber) 1, "status",
							   TEXTOID, -1, 0);
			ntuples = 1;
			nfields = 1;
		}
		else
		{
			FUNC0(FUNC14(res) == PGRES_TUPLES_OK);

			is_sql_cmd = false;

			/* get a tuple descriptor for our result type */
			switch (FUNC22(fcinfo, NULL, &tupdesc))
			{
				case TYPEFUNC_COMPOSITE:
					/* success */
					break;
				case TYPEFUNC_RECORD:
					/* failed to determine actual type of RECORD */
					FUNC19(ERROR,
							(FUNC20(ERRCODE_FEATURE_NOT_SUPPORTED),
							 FUNC21("function returning record called in context "
									"that cannot accept type record")));
					break;
				default:
					/* result type isn't composite */
					FUNC18(ERROR, "return type must be a row type");
					break;
			}

			/* make sure we have a persistent copy of the tupdesc */
			tupdesc = FUNC3(tupdesc);
			ntuples = FUNC13(res);
			nfields = FUNC12(res);
		}

		/*
		 * check result and tuple descriptor have the same number of columns
		 */
		if (nfields != tupdesc->natts)
			FUNC19(ERROR,
					(FUNC20(ERRCODE_DATATYPE_MISMATCH),
					 FUNC21("remote query result rowtype does not match "
							"the specified FROM clause rowtype")));

		if (ntuples > 0)
		{
			AttInMetadata *attinmeta;
			int			nestlevel = -1;
			Tuplestorestate *tupstore;
			MemoryContext oldcontext;
			int			row;
			char	  **values;

			attinmeta = FUNC15(tupdesc);

			/* Set GUCs to ensure we read GUC-sensitive data types correctly */
			if (!is_sql_cmd)
				nestlevel = FUNC17(conn);

			oldcontext = FUNC4(
											   rsinfo->econtext->ecxt_per_query_memory);
			tupstore = FUNC25(true, false, work_mem);
			rsinfo->setResult = tupstore;
			rsinfo->setDesc = tupdesc;
			FUNC4(oldcontext);

			values = (char **) FUNC23(nfields * sizeof(char *));

			/* put all tuples into the tuplestore */
			for (row = 0; row < ntuples; row++)
			{
				HeapTuple	tuple;

				if (!is_sql_cmd)
				{
					int			i;

					for (i = 0; i < nfields; i++)
					{
						if (FUNC10(res, row, i))
							values[i] = NULL;
						else
							values[i] = FUNC11(res, row, i);
					}
				}
				else
				{
					values[0] = FUNC9(res);
				}

				/* build the tuple and put it into the tuplestore. */
				tuple = FUNC1(attinmeta, values);
				FUNC27(tupstore, tuple);
			}

			/* clean up GUC settings, if we changed any */
			FUNC24(nestlevel);

			/* clean up and return the tuplestore */
			FUNC26(tupstore);
		}
	}
	FUNC6();
	{
		/* be sure to release the libpq result */
		FUNC8(res);
	}
	FUNC5();
}