#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tuplestore; int /*<<< orphan*/  tupledesc; } ;
typedef  TYPE_1__ WalRcvExecResult ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  scalar_t__ AttrNumber ;
typedef  int /*<<< orphan*/  AttInMetadata ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int MaxTupleAttributeNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int const,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  work_mem ; 

__attribute__((used)) static void
FUNC19(PGresult *pgres, WalRcvExecResult *walres,
					   const int nRetTypes, const Oid *retTypes)
{
	int			tupn;
	int			coln;
	int			nfields = FUNC9(pgres);
	HeapTuple	tuple;
	AttInMetadata *attinmeta;
	MemoryContext rowcontext;
	MemoryContext oldcontext;

	/* Make sure we got expected number of fields. */
	if (nfields != nRetTypes)
		FUNC14(ERROR,
				(FUNC16("invalid query response"),
				 FUNC15("Expected %d fields, got %d fields.",
						   nRetTypes, nfields)));

	walres->tuplestore = FUNC17(true, false, work_mem);

	/* Create tuple descriptor corresponding to expected result. */
	walres->tupledesc = FUNC2(nRetTypes);
	for (coln = 0; coln < nRetTypes; coln++)
		FUNC13(walres->tupledesc, (AttrNumber) coln + 1,
						   FUNC6(pgres, coln), retTypes[coln], -1, 0);
	attinmeta = FUNC12(walres->tupledesc);

	/* No point in doing more here if there were no tuples returned. */
	if (FUNC10(pgres) == 0)
		return;

	/* Create temporary context for local allocations. */
	rowcontext = FUNC0(CurrentMemoryContext,
									   "libpqrcv query result context",
									   ALLOCSET_DEFAULT_SIZES);

	/* Process returned rows. */
	for (tupn = 0; tupn < FUNC10(pgres); tupn++)
	{
		char	   *cstrs[MaxTupleAttributeNumber];

		FUNC11();

		/* Do the allocations in temporary context. */
		oldcontext = FUNC5(rowcontext);

		/*
		 * Fill cstrs with null-terminated strings of column values.
		 */
		for (coln = 0; coln < nfields; coln++)
		{
			if (FUNC7(pgres, tupn, coln))
				cstrs[coln] = NULL;
			else
				cstrs[coln] = FUNC8(pgres, tupn, coln);
		}

		/* Convert row to a tuple, and add it to the tuplestore */
		tuple = FUNC1(attinmeta, cstrs);
		FUNC18(walres->tuplestore, tuple);

		/* Clean up */
		FUNC5(oldcontext);
		FUNC4(rowcontext);
	}

	FUNC3(rowcontext);
}