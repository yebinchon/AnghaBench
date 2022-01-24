#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ TypeFuncClass ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_10__ {int /*<<< orphan*/  attname; } ;
struct TYPE_9__ {int natts; int tdtypmod; int /*<<< orphan*/  tdtypeid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  RECORDOID ; 
 scalar_t__ TYPEFUNC_COMPOSITE ; 
 scalar_t__ TYPEFUNC_RECORD ; 
 scalar_t__ TYPEFUNC_SCALAR ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 

TupleDesc
FUNC14(Oid typeoid, List *colaliases)
{
	Oid			base_typeoid;
	TypeFuncClass functypclass = FUNC7(typeoid, &base_typeoid);
	TupleDesc	tupdesc = NULL;

	/*
	 * Build a suitable tupledesc representing the output rows.  We
	 * intentionally do not support TYPEFUNC_COMPOSITE_DOMAIN here, as it's
	 * unlikely that legacy callers of this obsolete function would be
	 * prepared to apply domain constraints.
	 */
	if (functypclass == TYPEFUNC_COMPOSITE)
	{
		/* Composite data type, e.g. a table's row type */
		tupdesc = FUNC11(base_typeoid, -1);

		if (colaliases != NIL)
		{
			int			natts = tupdesc->natts;
			int			varattno;

			/* does the list length match the number of attributes? */
			if (FUNC9(colaliases) != natts)
				FUNC4(ERROR,
						(FUNC5(ERRCODE_DATATYPE_MISMATCH),
						 FUNC6("number of aliases does not match number of columns")));

			/* OK, use the aliases instead */
			for (varattno = 0; varattno < natts; varattno++)
			{
				char	   *label = FUNC13(FUNC10(colaliases, varattno));
				Form_pg_attribute attr = FUNC1(tupdesc, varattno);

				if (label != NULL)
					FUNC12(&(attr->attname), label);
			}

			/* The tuple type is now an anonymous record type */
			tupdesc->tdtypeid = RECORDOID;
			tupdesc->tdtypmod = -1;
		}
	}
	else if (functypclass == TYPEFUNC_SCALAR)
	{
		/* Base data type, i.e. scalar */
		char	   *attname;

		/* the alias list is required for base types */
		if (colaliases == NIL)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_DATATYPE_MISMATCH),
					 FUNC6("no column alias was provided")));

		/* the alias list length must be 1 */
		if (FUNC9(colaliases) != 1)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_DATATYPE_MISMATCH),
					 FUNC6("number of aliases does not match number of columns")));

		/* OK, get the column alias */
		attname = FUNC13(FUNC8(colaliases));

		tupdesc = FUNC0(1);
		FUNC2(tupdesc,
						   (AttrNumber) 1,
						   attname,
						   typeoid,
						   -1,
						   0);
	}
	else if (functypclass == TYPEFUNC_RECORD)
	{
		/* XXX can't support this because typmod wasn't passed in ... */
		FUNC4(ERROR,
				(FUNC5(ERRCODE_DATATYPE_MISMATCH),
				 FUNC6("could not determine row description for function returning record")));
	}
	else
	{
		/* crummy error message, but parser should have caught this */
		FUNC3(ERROR, "function in FROM has unsupported return type");
	}

	return tupdesc;
}