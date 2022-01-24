#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_6__ {scalar_t__ atttypid; } ;
struct TYPE_5__ {scalar_t__ natts; } ;

/* Variables and functions */
 scalar_t__ CONNECTBY_NCOLS ; 
 scalar_t__ CONNECTBY_NCOLS_NOBRANCH ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ INT4OID ; 
 scalar_t__ TEXTOID ; 
 TYPE_3__* FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6(TupleDesc td, bool show_branch, bool show_serial)
{
	int			serial_column = 0;

	if (show_serial)
		serial_column = 1;

	/* are there the correct number of columns */
	if (show_branch)
	{
		if (td->natts != (CONNECTBY_NCOLS + serial_column))
			FUNC1(ERROR,
					(FUNC2(ERRCODE_DATATYPE_MISMATCH),
					 FUNC4("invalid return type"),
					 FUNC3("Query-specified return tuple has " \
							   "wrong number of columns.")));
	}
	else
	{
		if (td->natts != CONNECTBY_NCOLS_NOBRANCH + serial_column)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_DATATYPE_MISMATCH),
					 FUNC4("invalid return type"),
					 FUNC3("Query-specified return tuple has " \
							   "wrong number of columns.")));
	}

	/* check that the types of the first two columns match */
	if (FUNC0(td, 0)->atttypid != FUNC0(td, 1)->atttypid)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DATATYPE_MISMATCH),
				 FUNC4("invalid return type"),
				 FUNC3("First two columns must be the same type.")));

	/* check that the type of the third column is INT4 */
	if (FUNC0(td, 2)->atttypid != INT4OID)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DATATYPE_MISMATCH),
				 FUNC4("invalid return type"),
				 FUNC3("Third column must be type %s.",
						   FUNC5(INT4OID))));

	/* check that the type of the fourth column is TEXT if applicable */
	if (show_branch && FUNC0(td, 3)->atttypid != TEXTOID)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DATATYPE_MISMATCH),
				 FUNC4("invalid return type"),
				 FUNC3("Fourth column must be type %s.",
						   FUNC5(TEXTOID))));

	/* check that the type of the fifth column is INT4 */
	if (show_branch && show_serial &&
		FUNC0(td, 4)->atttypid != INT4OID)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DATATYPE_MISMATCH),
				 FUNC4("query-specified return tuple not valid for Connectby: "
						"fifth column must be type %s",
						FUNC5(INT4OID))));

	/* check that the type of the fifth column is INT4 */
	if (!show_branch && show_serial &&
		FUNC0(td, 3)->atttypid != INT4OID)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DATATYPE_MISMATCH),
				 FUNC4("query-specified return tuple not valid for Connectby: "
						"fourth column must be type %s",
						FUNC5(INT4OID))));

	/* OK, the tupdesc is valid for our purposes */
}