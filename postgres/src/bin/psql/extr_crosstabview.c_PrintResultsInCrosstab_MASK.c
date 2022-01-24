#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pivot_field ;
struct TYPE_7__ {int count; int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ avl_tree ;
struct TYPE_8__ {int /*<<< orphan*/ ** ctv_args; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CROSSTABVIEW_MAX_COLUMNS ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 scalar_t__ FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int) ; 
 TYPE_2__ pset ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *) ; 

bool
FUNC16(const PGresult *res)
{
	bool		retval = false;
	avl_tree	piv_columns;
	avl_tree	piv_rows;
	pivot_field *array_columns = NULL;
	pivot_field *array_rows = NULL;
	int			num_columns = 0;
	int			num_rows = 0;
	int			field_for_rows;
	int			field_for_columns;
	int			field_for_data;
	int			sort_field_for_columns;
	int			rn;

	FUNC8(&piv_rows);
	FUNC8(&piv_columns);

	if (FUNC5(res) != PGRES_TUPLES_OK)
	{
		FUNC12("\\crosstabview: statement did not return a result set");
		goto error_return;
	}

	if (FUNC3(res) < 3)
	{
		FUNC12("\\crosstabview: query must return at least three columns");
		goto error_return;
	}

	/* Process first optional arg (vertical header column) */
	if (pset.ctv_args[0] == NULL)
		field_for_rows = 0;
	else
	{
		field_for_rows = FUNC10(pset.ctv_args[0], res);
		if (field_for_rows < 0)
			goto error_return;
	}

	/* Process second optional arg (horizontal header column) */
	if (pset.ctv_args[1] == NULL)
		field_for_columns = 1;
	else
	{
		field_for_columns = FUNC10(pset.ctv_args[1], res);
		if (field_for_columns < 0)
			goto error_return;
	}

	/* Insist that header columns be distinct */
	if (field_for_columns == field_for_rows)
	{
		FUNC12("\\crosstabview: vertical and horizontal headers must be different columns");
		goto error_return;
	}

	/* Process third optional arg (data column) */
	if (pset.ctv_args[2] == NULL)
	{
		int			i;

		/*
		 * If the data column was not specified, we search for the one not
		 * used as either vertical or horizontal headers.  Must be exactly
		 * three columns, or this won't be unique.
		 */
		if (FUNC3(res) != 3)
		{
			FUNC12("\\crosstabview: data column must be specified when query returns more than three columns");
			goto error_return;
		}

		field_for_data = -1;
		for (i = 0; i < FUNC3(res); i++)
		{
			if (i != field_for_rows && i != field_for_columns)
			{
				field_for_data = i;
				break;
			}
		}
		FUNC0(field_for_data >= 0);
	}
	else
	{
		field_for_data = FUNC10(pset.ctv_args[2], res);
		if (field_for_data < 0)
			goto error_return;
	}

	/* Process fourth optional arg (horizontal header sort column) */
	if (pset.ctv_args[3] == NULL)
		sort_field_for_columns = -1;	/* no sort column */
	else
	{
		sort_field_for_columns = FUNC10(pset.ctv_args[3], res);
		if (sort_field_for_columns < 0)
			goto error_return;
	}

	/*
	 * First part: accumulate the names that go into the vertical and
	 * horizontal headers, each into an AVL binary tree to build the set of
	 * DISTINCT values.
	 */

	for (rn = 0; rn < FUNC4(res); rn++)
	{
		char	   *val;
		char	   *val1;

		/* horizontal */
		val = FUNC1(res, rn, field_for_columns) ? NULL :
			FUNC2(res, rn, field_for_columns);
		val1 = NULL;

		if (sort_field_for_columns >= 0 &&
			!FUNC1(res, rn, sort_field_for_columns))
			val1 = FUNC2(res, rn, sort_field_for_columns);

		FUNC9(&piv_columns, val, val1);

		if (piv_columns.count > CROSSTABVIEW_MAX_COLUMNS)
		{
			FUNC12("\\crosstabview: maximum number of columns (%d) exceeded",
						 CROSSTABVIEW_MAX_COLUMNS);
			goto error_return;
		}

		/* vertical */
		val = FUNC1(res, rn, field_for_rows) ? NULL :
			FUNC2(res, rn, field_for_rows);

		FUNC9(&piv_rows, val, NULL);
	}

	/*
	 * Second part: Generate sorted arrays from the AVL trees.
	 */

	num_columns = piv_columns.count;
	num_rows = piv_rows.count;

	array_columns = (pivot_field *)
		FUNC13(sizeof(pivot_field) * num_columns);

	array_rows = (pivot_field *)
		FUNC13(sizeof(pivot_field) * num_rows);

	FUNC6(&piv_columns, piv_columns.root, array_columns, 0);
	FUNC6(&piv_rows, piv_rows.root, array_rows, 0);

	/*
	 * Third part: optionally, process the ranking data for the horizontal
	 * header
	 */
	if (sort_field_for_columns >= 0)
		FUNC15(num_columns, array_columns);

	/*
	 * Fourth part: print the crosstab'ed results.
	 */
	retval = FUNC14(res,
						   num_columns, array_columns, field_for_columns,
						   num_rows, array_rows, field_for_rows,
						   field_for_data);

error_return:
	FUNC7(&piv_columns, piv_columns.root);
	FUNC7(&piv_rows, piv_rows.root);
	FUNC11(array_columns);
	FUNC11(array_rows);

	return retval;
}