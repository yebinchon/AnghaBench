#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_9__ {int attidx; } ;
typedef  TYPE_1__ crosstab_cat_desc ;
typedef  int /*<<< orphan*/  Tuplestorestate ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_11__ {int /*<<< orphan*/ * vals; TYPE_2__* tupdesc; } ;
struct TYPE_10__ {int natts; } ;
typedef  TYPE_3__ SPITupleTable ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  int /*<<< orphan*/  AttInMetadata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ SPI_OK_FINISH ; 
 int SPI_OK_SELECT ; 
 int FUNC1 () ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ SPI_processed ; 
 TYPE_3__* SPI_tuptable ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/ * FUNC14 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  work_mem ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 

__attribute__((used)) static Tuplestorestate *
FUNC20(char *sql,
						HTAB *crosstab_hash,
						TupleDesc tupdesc,
						MemoryContext per_query_ctx,
						bool randomAccess)
{
	Tuplestorestate *tupstore;
	int			num_categories = FUNC12(crosstab_hash);
	AttInMetadata *attinmeta = FUNC5(tupdesc);
	char	  **values;
	HeapTuple	tuple;
	int			ret;
	uint64		proc;

	/* initialize our tuplestore (while still in query context!) */
	tupstore = FUNC14(randomAccess, false, work_mem);

	/* Connect to SPI manager */
	if ((ret = FUNC1()) < 0)
		/* internal error */
		FUNC7(ERROR, "get_crosstab_tuplestore: SPI_connect returned %d", ret);

	/* Now retrieve the crosstab source rows */
	ret = FUNC2(sql, true, 0);
	proc = SPI_processed;

	/* Check for qualifying tuples */
	if ((ret == SPI_OK_SELECT) && (proc > 0))
	{
		SPITupleTable *spi_tuptable = SPI_tuptable;
		TupleDesc	spi_tupdesc = spi_tuptable->tupdesc;
		int			ncols = spi_tupdesc->natts;
		char	   *rowid;
		char	   *lastrowid = NULL;
		bool		firstpass = true;
		uint64		i;
		int			j;
		int			result_ncols;

		if (num_categories == 0)
		{
			/* no qualifying category tuples */
			FUNC8(ERROR,
					(FUNC9(ERRCODE_SYNTAX_ERROR),
					 FUNC11("provided \"categories\" SQL must " \
							"return 1 column of at least one row")));
		}

		/*
		 * The provided SQL query must always return at least three columns:
		 *
		 * 1. rowname	the label for each row - column 1 in the final result
		 * 2. category	the label for each value-column in the final result 3.
		 * value	 the values used to populate the value-columns
		 *
		 * If there are more than three columns, the last two are taken as
		 * "category" and "values". The first column is taken as "rowname".
		 * Additional columns (2 thru N-2) are assumed the same for the same
		 * "rowname", and are copied into the result tuple from the first time
		 * we encounter a particular rowname.
		 */
		if (ncols < 3)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC11("invalid source data SQL statement"),
					 FUNC10("The provided SQL must return 3 " \
							   " columns; rowid, category, and values.")));

		result_ncols = (ncols - 2) + num_categories;

		/* Recheck to make sure we tuple descriptor still looks reasonable */
		if (tupdesc->natts != result_ncols)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_SYNTAX_ERROR),
					 FUNC11("invalid return type"),
					 FUNC10("Query-specified return " \
							   "tuple has %d columns but crosstab " \
							   "returns %d.", tupdesc->natts, result_ncols)));

		/* allocate space and make sure it's clear */
		values = (char **) FUNC13(result_ncols * sizeof(char *));

		for (i = 0; i < proc; i++)
		{
			HeapTuple	spi_tuple;
			crosstab_cat_desc *catdesc;
			char	   *catname;

			/* get the next sql result tuple */
			spi_tuple = spi_tuptable->vals[i];

			/* get the rowid from the current sql result tuple */
			rowid = FUNC4(spi_tuple, spi_tupdesc, 1);

			/*
			 * if we're on a new output row, grab the column values up to
			 * column N-2 now
			 */
			if (firstpass || !FUNC19(lastrowid, rowid))
			{
				/*
				 * a new row means we need to flush the old one first, unless
				 * we're on the very first row
				 */
				if (!firstpass)
				{
					/* rowid changed, flush the previous output row */
					tuple = FUNC0(attinmeta, values);

					FUNC16(tupstore, tuple);

					for (j = 0; j < result_ncols; j++)
						FUNC17(values[j]);
				}

				values[0] = rowid;
				for (j = 1; j < ncols - 2; j++)
					values[j] = FUNC4(spi_tuple, spi_tupdesc, j + 1);

				/* we're no longer on the first pass */
				firstpass = false;
			}

			/* look up the category and fill in the appropriate column */
			catname = FUNC4(spi_tuple, spi_tupdesc, ncols - 1);

			if (catname != NULL)
			{
				FUNC6(crosstab_hash, catname, catdesc);

				if (catdesc)
					values[catdesc->attidx + ncols - 2] =
						FUNC4(spi_tuple, spi_tupdesc, ncols);
			}

			FUNC17(lastrowid);
			FUNC18(lastrowid, rowid);
		}

		/* flush the last output row */
		tuple = FUNC0(attinmeta, values);

		FUNC16(tupstore, tuple);
	}

	if (FUNC3() != SPI_OK_FINISH)
		/* internal error */
		FUNC7(ERROR, "get_crosstab_tuplestore: SPI_finish() failed");

	FUNC15(tupstore);

	return tupstore;
}