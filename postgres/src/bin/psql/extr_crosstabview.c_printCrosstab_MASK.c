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
struct TYPE_13__ {char** cells; int cellsadded; } ;
typedef  TYPE_1__ printTableContent ;
struct TYPE_14__ {char* nullPrint; int /*<<< orphan*/  title; int /*<<< orphan*/  topt; } ;
typedef  TYPE_2__ printQueryOpt ;
struct TYPE_15__ {size_t rank; char* name; } ;
typedef  TYPE_3__ pivot_field ;
struct TYPE_16__ {int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; TYPE_2__ popt; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,int) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 char FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  pivotFieldCompare ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,int,char) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 TYPE_4__ pset ; 

__attribute__((used)) static bool
FUNC15(const PGresult *results,
			  int num_columns, pivot_field *piv_columns, int field_for_columns,
			  int num_rows, pivot_field *piv_rows, int field_for_rows,
			  int field_for_data)
{
	printQueryOpt popt = pset.popt;
	printTableContent cont;
	int			i,
				rn;
	char		col_align;
	int		   *horiz_map;
	bool		retval = false;

	FUNC14(&cont, &popt.topt, popt.title, num_columns + 1, num_rows);

	/* Step 1: set target column names (horizontal header) */

	/* The name of the first column is kept unchanged by the pivoting */
	FUNC12(&cont,
						FUNC1(results, field_for_rows),
						false,
						FUNC7(FUNC2(results,
													  field_for_rows)));

	/*
	 * To iterate over piv_columns[] by piv_columns[].rank, create a reverse
	 * map associating each piv_columns[].rank to its index in piv_columns.
	 * This avoids an O(N^2) loop later.
	 */
	horiz_map = (int *) FUNC10(sizeof(int) * num_columns);
	for (i = 0; i < num_columns; i++)
		horiz_map[piv_columns[i].rank] = i;

	/*
	 * The display alignment depends on its PQftype().
	 */
	col_align = FUNC7(FUNC2(results, field_for_data));

	for (i = 0; i < num_columns; i++)
	{
		char	   *colname;

		colname = piv_columns[horiz_map[i]].name ?
			piv_columns[horiz_map[i]].name :
			(popt.nullPrint ? popt.nullPrint : "");

		FUNC12(&cont, colname, false, col_align);
	}
	FUNC8(horiz_map);

	/* Step 2: set row names in the first output column (vertical header) */
	for (i = 0; i < num_rows; i++)
	{
		int			k = piv_rows[i].rank;

		cont.cells[k * (num_columns + 1)] = piv_rows[i].name ?
			piv_rows[i].name :
			(popt.nullPrint ? popt.nullPrint : "");
	}
	cont.cellsadded = num_rows * (num_columns + 1);

	/*
	 * Step 3: fill in the content cells.
	 */
	for (rn = 0; rn < FUNC5(results); rn++)
	{
		int			row_number;
		int			col_number;
		pivot_field *rp,
				   *cp;
		pivot_field elt;

		/* Find target row */
		if (!FUNC3(results, rn, field_for_rows))
			elt.name = FUNC4(results, rn, field_for_rows);
		else
			elt.name = NULL;
		rp = (pivot_field *) FUNC6(&elt,
									 piv_rows,
									 num_rows,
									 sizeof(pivot_field),
									 pivotFieldCompare);
		FUNC0(rp != NULL);
		row_number = rp->rank;

		/* Find target column */
		if (!FUNC3(results, rn, field_for_columns))
			elt.name = FUNC4(results, rn, field_for_columns);
		else
			elt.name = NULL;

		cp = (pivot_field *) FUNC6(&elt,
									 piv_columns,
									 num_columns,
									 sizeof(pivot_field),
									 pivotFieldCompare);
		FUNC0(cp != NULL);
		col_number = cp->rank;

		/* Place value into cell */
		if (col_number >= 0 && row_number >= 0)
		{
			int			idx;

			/* index into the cont.cells array */
			idx = 1 + col_number + row_number * (num_columns + 1);

			/*
			 * If the cell already contains a value, raise an error.
			 */
			if (cont.cells[idx] != NULL)
			{
				FUNC9("\\crosstabview: query result contains multiple data values for row \"%s\", column \"%s\"",
							 rp->name ? rp->name :
							 (popt.nullPrint ? popt.nullPrint : "(null)"),
							 cp->name ? cp->name :
							 (popt.nullPrint ? popt.nullPrint : "(null)"));
				goto error;
			}

			cont.cells[idx] = !FUNC3(results, rn, field_for_data) ?
				FUNC4(results, rn, field_for_data) :
				(popt.nullPrint ? popt.nullPrint : "");
		}
	}

	/*
	 * The non-initialized cells must be set to an empty string for the print
	 * functions
	 */
	for (i = 0; i < cont.cellsadded; i++)
	{
		if (cont.cells[i] == NULL)
			cont.cells[i] = "";
	}

	FUNC11(&cont, pset.queryFout, false, pset.logfile);
	retval = true;

error:
	FUNC13(&cont);

	return retval;
}