#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__* attgenerated; scalar_t__ needs_override; scalar_t__ ispartition; } ;
typedef  TYPE_1__ TableInfo ;
struct TYPE_23__ {scalar_t__ filtercond; TYPE_1__* tdtable; } ;
typedef  TYPE_2__ TableDataInfo ;
struct TYPE_26__ {TYPE_4__* dopt; } ;
struct TYPE_25__ {int dump_inserts; scalar_t__ do_nothing; scalar_t__ column_inserts; scalar_t__ load_via_partition_root; } ;
struct TYPE_24__ {char* data; } ;
typedef  TYPE_3__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ DumpOptions ;
typedef  TYPE_5__ Archive ;

/* Variables and functions */
#define  BITOID 137 
#define  BOOLOID 136 
 int /*<<< orphan*/ * FUNC0 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*) ; 
#define  FLOAT4OID 135 
#define  FLOAT8OID 134 
#define  INT2OID 133 
#define  INT4OID 132 
#define  INT8OID 131 
#define  NUMERICOID 130 
#define  OIDOID 129 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 char const* FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
#define  VARBITOID 128 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char const*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,TYPE_5__*) ; 
 TYPE_3__* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 
 TYPE_1__* FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char const*) ; 
 int /*<<< orphan*/  FUNC23 (char const*,char*) ; 

__attribute__((used)) static int
FUNC24(Archive *fout, void *dcontext)
{
	TableDataInfo *tdinfo = (TableDataInfo *) dcontext;
	TableInfo  *tbinfo = tdinfo->tdtable;
	DumpOptions *dopt = fout->dopt;
	PQExpBuffer q = FUNC15();
	PQExpBuffer insertStmt = NULL;
	PGresult   *res;
	int			nfields;
	int			rows_per_statement = dopt->dump_inserts;
	int			rows_this_statement = 0;

	FUNC9(q, "DECLARE _pg_dump_cursor CURSOR FOR "
					  "SELECT * FROM ONLY %s",
					  FUNC18(tbinfo));
	if (tdinfo->filtercond)
		FUNC9(q, " %s", tdinfo->filtercond);

	FUNC1(fout, q->data);

	while (1)
	{
		res = FUNC0(fout, "FETCH 100 FROM _pg_dump_cursor",
							  PGRES_TUPLES_OK);
		nfields = FUNC7(res);

		/*
		 * First time through, we build as much of the INSERT statement as
		 * possible in "insertStmt", which we can then just print for each
		 * statement. If the table happens to have zero columns then this will
		 * be a complete statement, otherwise it will end in "VALUES" and be
		 * ready to have the row's column values printed.
		 */
		if (insertStmt == NULL)
		{
			TableInfo  *targettab;

			insertStmt = FUNC15();

			/*
			 * When load-via-partition-root is set, get the root table name
			 * for the partition table, so that we can reload data through the
			 * root table.
			 */
			if (dopt->load_via_partition_root && tbinfo->ispartition)
				targettab = FUNC19(tbinfo);
			else
				targettab = tbinfo;

			FUNC9(insertStmt, "INSERT INTO %s ",
							  FUNC18(targettab));

			/* corner case for zero-column table */
			if (nfields == 0)
			{
				FUNC11(insertStmt, "DEFAULT VALUES;\n");
			}
			else
			{
				/* append the list of column names if required */
				if (dopt->column_inserts)
				{
					FUNC10(insertStmt, '(');
					for (int field = 0; field < nfields; field++)
					{
						if (field > 0)
							FUNC11(insertStmt, ", ");
						FUNC11(insertStmt,
											 FUNC17(FUNC3(res, field)));
					}
					FUNC11(insertStmt, ") ");
				}

				if (tbinfo->needs_override)
					FUNC11(insertStmt, "OVERRIDING SYSTEM VALUE ");

				FUNC11(insertStmt, "VALUES");
			}
		}

		for (int tuple = 0; tuple < FUNC8(res); tuple++)
		{
			/* Write the INSERT if not in the middle of a multi-row INSERT. */
			if (rows_this_statement == 0)
				FUNC14(insertStmt->data, fout);

			/*
			 * If it is zero-column table then we've already written the
			 * complete statement, which will mean we've disobeyed
			 * --rows-per-insert when it's set greater than 1.  We do support
			 * a way to make this multi-row with: SELECT UNION ALL SELECT
			 * UNION ALL ... but that's non-standard so we should avoid it
			 * given that using INSERTs is mostly only ever needed for
			 * cross-database exports.
			 */
			if (nfields == 0)
				continue;

			/* Emit a row heading */
			if (rows_per_statement == 1)
				FUNC14(" (", fout);
			else if (rows_this_statement > 0)
				FUNC14(",\n\t(", fout);
			else
				FUNC14("\n\t(", fout);

			for (int field = 0; field < nfields; field++)
			{
				if (field > 0)
					FUNC14(", ", fout);
				if (tbinfo->attgenerated[field])
				{
					FUNC14("DEFAULT", fout);
					continue;
				}
				if (FUNC5(res, tuple, field))
				{
					FUNC14("NULL", fout);
					continue;
				}

				/* XXX This code is partially duplicated in ruleutils.c */
				switch (FUNC4(res, field))
				{
					case INT2OID:
					case INT4OID:
					case INT8OID:
					case OIDOID:
					case FLOAT4OID:
					case FLOAT8OID:
					case NUMERICOID:
						{
							/*
							 * These types are printed without quotes unless
							 * they contain values that aren't accepted by the
							 * scanner unquoted (e.g., 'NaN').  Note that
							 * strtod() and friends might accept NaN, so we
							 * can't use that to test.
							 *
							 * In reality we only need to defend against
							 * infinity and NaN, so we need not get too crazy
							 * about pattern matching here.
							 */
							const char *s = FUNC6(res, tuple, field);

							if (FUNC23(s, "0123456789 +-eE.") == FUNC22(s))
								FUNC14(s, fout);
							else
								FUNC13(fout, "'%s'", s);
						}
						break;

					case BITOID:
					case VARBITOID:
						FUNC13(fout, "B'%s'",
								   FUNC6(res, tuple, field));
						break;

					case BOOLOID:
						if (FUNC21(FUNC6(res, tuple, field), "t") == 0)
							FUNC14("true", fout);
						else
							FUNC14("false", fout);
						break;

					default:
						/* All other types are printed as string literals. */
						FUNC20(q);
						FUNC12(q,
											  FUNC6(res, tuple, field),
											  fout);
						FUNC14(q->data, fout);
						break;
				}
			}

			/* Terminate the row ... */
			FUNC14(")", fout);

			/* ... and the statement, if the target no. of rows is reached */
			if (++rows_this_statement >= rows_per_statement)
			{
				if (dopt->do_nothing)
					FUNC14(" ON CONFLICT DO NOTHING;\n", fout);
				else
					FUNC14(";\n", fout);
				/* Reset the row counter */
				rows_this_statement = 0;
			}
		}

		if (FUNC8(res) <= 0)
		{
			FUNC2(res);
			break;
		}
		FUNC2(res);
	}

	/* Terminate any statements that didn't make the row count. */
	if (rows_this_statement > 0)
	{
		if (dopt->do_nothing)
			FUNC14(" ON CONFLICT DO NOTHING;\n", fout);
		else
			FUNC14(";\n", fout);
	}

	FUNC14("\n\n", fout);

	FUNC1(fout, "CLOSE _pg_dump_cursor");

	FUNC16(q);
	if (insertStmt != NULL)
		FUNC16(insertStmt);

	return 1;
}