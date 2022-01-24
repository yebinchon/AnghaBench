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
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  Tuplestorestate ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_13__ {int /*<<< orphan*/  tupdesc; } ;
struct TYPE_12__ {int /*<<< orphan*/ * vals; int /*<<< orphan*/  tupdesc; } ;
struct TYPE_11__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ SPITupleTable ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__ AttInMetadata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char**) ; 
 int CONNECTBY_NCOLS ; 
 int CONNECTBY_NCOLS_NOBRANCH ; 
 int /*<<< orphan*/  ERRCODE_INVALID_RECURSION ; 
 int /*<<< orphan*/  ERROR ; 
 int INT32_STRLEN ; 
 int SPI_OK_SELECT ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ SPI_processed ; 
 TYPE_2__* SPI_tuptable ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static void
FUNC18(char *key_fld,
							 char *parent_key_fld,
							 char *relname,
							 char *orderby_fld,
							 char *branch_delim,
							 char *start_with,
							 char *branch,
							 int level,
							 int *serial,
							 int max_depth,
							 bool show_branch,
							 bool show_serial,
							 MemoryContext per_query_ctx,
							 AttInMetadata *attinmeta,
							 Tuplestorestate *tupstore)
{
	TupleDesc	tupdesc = attinmeta->tupdesc;
	int			ret;
	uint64		proc;
	int			serial_column;
	StringInfoData sql;
	char	  **values;
	char	   *current_key;
	char	   *current_key_parent;
	char		current_level[INT32_STRLEN];
	char		serial_str[INT32_STRLEN];
	char	   *current_branch;
	HeapTuple	tuple;

	if (max_depth > 0 && level > max_depth)
		return;

	FUNC10(&sql);

	/* Build initial sql statement */
	if (!show_serial)
	{
		FUNC3(&sql, "SELECT %s, %s FROM %s WHERE %s = %s AND %s IS NOT NULL AND %s <> %s",
						 key_fld,
						 parent_key_fld,
						 relname,
						 parent_key_fld,
						 FUNC12(start_with),
						 key_fld, key_fld, parent_key_fld);
		serial_column = 0;
	}
	else
	{
		FUNC3(&sql, "SELECT %s, %s FROM %s WHERE %s = %s AND %s IS NOT NULL AND %s <> %s ORDER BY %s",
						 key_fld,
						 parent_key_fld,
						 relname,
						 parent_key_fld,
						 FUNC12(start_with),
						 key_fld, key_fld, parent_key_fld,
						 orderby_fld);
		serial_column = 1;
	}

	if (show_branch)
		values = (char **) FUNC11((CONNECTBY_NCOLS + serial_column) * sizeof(char *));
	else
		values = (char **) FUNC11((CONNECTBY_NCOLS_NOBRANCH + serial_column) * sizeof(char *));

	/* First time through, do a little setup */
	if (level == 0)
	{
		/* root value is the one we initially start with */
		values[0] = start_with;

		/* root value has no parent */
		values[1] = NULL;

		/* root level is 0 */
		FUNC14(current_level, "%d", level);
		values[2] = current_level;

		/* root branch is just starting root value */
		if (show_branch)
			values[3] = start_with;

		/* root starts the serial with 1 */
		if (show_serial)
		{
			FUNC14(serial_str, "%d", (*serial)++);
			if (show_branch)
				values[4] = serial_str;
			else
				values[3] = serial_str;
		}

		/* construct the tuple */
		tuple = FUNC0(attinmeta, values);

		/* now store it */
		FUNC16(tupstore, tuple);

		/* increment level */
		level++;
	}

	/* Retrieve the desired rows */
	ret = FUNC1(sql.data, true, 0);
	proc = SPI_processed;

	/* Check for qualifying tuples */
	if ((ret == SPI_OK_SELECT) && (proc > 0))
	{
		HeapTuple	spi_tuple;
		SPITupleTable *tuptable = SPI_tuptable;
		TupleDesc	spi_tupdesc = tuptable->tupdesc;
		uint64		i;
		StringInfoData branchstr;
		StringInfoData chk_branchstr;
		StringInfoData chk_current_key;

		/*
		 * Check that return tupdesc is compatible with the one we got from
		 * the query.
		 */
		FUNC5(tupdesc, spi_tupdesc);

		FUNC10(&branchstr);
		FUNC10(&chk_branchstr);
		FUNC10(&chk_current_key);

		for (i = 0; i < proc; i++)
		{
			/* initialize branch for this pass */
			FUNC4(&branchstr, branch);
			FUNC3(&chk_branchstr, "%s%s%s", branch_delim, branch, branch_delim);

			/* get the next sql result tuple */
			spi_tuple = tuptable->vals[i];

			/* get the current key (might be NULL) */
			current_key = FUNC2(spi_tuple, spi_tupdesc, 1);

			/* get the parent key (might be NULL) */
			current_key_parent = FUNC2(spi_tuple, spi_tupdesc, 2);

			/* get the current level */
			FUNC14(current_level, "%d", level);

			/* check to see if this key is also an ancestor */
			if (current_key)
			{
				FUNC3(&chk_current_key, "%s%s%s",
								 branch_delim, current_key, branch_delim);
				if (FUNC15(chk_branchstr.data, chk_current_key.data))
					FUNC6(ERROR,
							(FUNC7(ERRCODE_INVALID_RECURSION),
							 FUNC8("infinite recursion detected")));
			}

			/* OK, extend the branch */
			if (current_key)
				FUNC3(&branchstr, "%s%s", branch_delim, current_key);
			current_branch = branchstr.data;

			/* build a tuple */
			values[0] = current_key;
			values[1] = current_key_parent;
			values[2] = current_level;
			if (show_branch)
				values[3] = current_branch;
			if (show_serial)
			{
				FUNC14(serial_str, "%d", (*serial)++);
				if (show_branch)
					values[4] = serial_str;
				else
					values[3] = serial_str;
			}

			tuple = FUNC0(attinmeta, values);

			/* store the tuple for later use */
			FUNC16(tupstore, tuple);

			FUNC9(tuple);

			/* recurse using current_key as the new start_with */
			if (current_key)
				FUNC18(key_fld,
											 parent_key_fld,
											 relname,
											 orderby_fld,
											 branch_delim,
											 current_key,
											 current_branch,
											 level + 1,
											 serial,
											 max_depth,
											 show_branch,
											 show_serial,
											 per_query_ctx,
											 attinmeta,
											 tupstore);

			FUNC17(current_key);
			FUNC17(current_key_parent);

			/* reset branch for next pass */
			FUNC13(&branchstr);
			FUNC13(&chk_branchstr);
			FUNC13(&chk_current_key);
		}

		FUNC17(branchstr.data);
		FUNC17(chk_branchstr.data);
		FUNC17(chk_current_key.data);
	}
}