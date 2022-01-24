#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_18__ {int /*<<< orphan*/  attname; scalar_t__ attisdropped; } ;
struct TYPE_17__ {TYPE_1__* rd_att; } ;
struct TYPE_16__ {int /*<<< orphan*/ * vals; } ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
struct TYPE_14__ {int natts; } ;
typedef  TYPE_2__ StringInfoData ;
typedef  TYPE_3__ SPITupleTable ;
typedef  TYPE_4__* Relation ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_5__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_CARDINALITY_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SPI_OK_SELECT ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int SPI_processed ; 
 TYPE_3__* SPI_tuptable ; 
 TYPE_5__* FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 char* FUNC16 (char*) ; 

__attribute__((used)) static HeapTuple
FUNC17(Relation rel, int *pkattnums, int pknumatts, char **src_pkattvals)
{
	char	   *relname;
	TupleDesc	tupdesc;
	int			natts;
	StringInfoData buf;
	int			ret;
	HeapTuple	tuple;
	int			i;

	/*
	 * Connect to SPI manager
	 */
	if ((ret = FUNC1()) < 0)
		/* internal error */
		FUNC8(ERROR, "SPI connect failure - returned %d", ret);

	FUNC13(&buf);

	/* get relation name including any needed schema prefix and quoting */
	relname = FUNC12(rel);

	tupdesc = rel->rd_att;
	natts = tupdesc->natts;

	/*
	 * Build sql statement to look up tuple of interest, ie, the one matching
	 * src_pkattvals.  We used to use "SELECT *" here, but it's simpler to
	 * generate a result tuple that matches the table's physical structure,
	 * with NULLs for any dropped columns.  Otherwise we have to deal with two
	 * different tupdescs and everything's very confusing.
	 */
	FUNC7(&buf, "SELECT ");

	for (i = 0; i < natts; i++)
	{
		Form_pg_attribute attr = FUNC5(tupdesc, i);

		if (i > 0)
			FUNC7(&buf, ", ");

		if (attr->attisdropped)
			FUNC7(&buf, "NULL");
		else
			FUNC7(&buf,
								   FUNC15(FUNC0(attr->attname)));
	}

	FUNC6(&buf, " FROM %s WHERE ", relname);

	for (i = 0; i < pknumatts; i++)
	{
		int			pkattnum = pkattnums[i];
		Form_pg_attribute attr = FUNC5(tupdesc, pkattnum);

		if (i > 0)
			FUNC7(&buf, " AND ");

		FUNC7(&buf,
							   FUNC15(FUNC0(attr->attname)));

		if (src_pkattvals[i] != NULL)
			FUNC6(&buf, " = %s",
							 FUNC16(src_pkattvals[i]));
		else
			FUNC7(&buf, " IS NULL");
	}

	/*
	 * Retrieve the desired tuple
	 */
	ret = FUNC3(buf.data, 0);
	FUNC14(buf.data);

	/*
	 * Only allow one qualifying tuple
	 */
	if ((ret == SPI_OK_SELECT) && (SPI_processed > 1))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_CARDINALITY_VIOLATION),
				 FUNC11("source criteria matched more than one record")));

	else if (ret == SPI_OK_SELECT && SPI_processed == 1)
	{
		SPITupleTable *tuptable = SPI_tuptable;

		tuple = FUNC2(tuptable->vals[0]);
		FUNC4();

		return tuple;
	}
	else
	{
		/*
		 * no qualifying tuples
		 */
		FUNC4();

		return NULL;
	}

	/*
	 * never reached, but keep compiler quiet
	 */
	return NULL;
}