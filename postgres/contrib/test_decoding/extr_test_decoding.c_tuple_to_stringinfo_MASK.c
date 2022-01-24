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
typedef  TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ attnum; int /*<<< orphan*/  attname; int /*<<< orphan*/  atttypid; scalar_t__ attisdropped; } ;
struct TYPE_7__ {int natts; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(StringInfo s, TupleDesc tupdesc, HeapTuple tuple, bool skip_nulls)
{
	int			natt;

	/* print all columns individually */
	for (natt = 0; natt < tupdesc->natts; natt++)
	{
		Form_pg_attribute attr; /* the attribute itself */
		Oid			typid;		/* type of current attribute */
		Oid			typoutput;	/* output function */
		bool		typisvarlena;
		Datum		origval;	/* possibly toasted Datum */
		bool		isnull;		/* column is null? */

		attr = FUNC4(tupdesc, natt);

		/*
		 * don't print dropped columns, we can't be sure everything is
		 * available for them
		 */
		if (attr->attisdropped)
			continue;

		/*
		 * Don't print system columns, oid will already have been printed if
		 * present.
		 */
		if (attr->attnum < 0)
			continue;

		typid = attr->atttypid;

		/* get Datum from tuple */
		origval = FUNC10(tuple, natt + 1, tupdesc, &isnull);

		if (isnull && skip_nulls)
			continue;

		/* print attribute name */
		FUNC6(s, ' ');
		FUNC7(s, FUNC12(FUNC0(attr->attname)));

		/* print attribute type */
		FUNC6(s, '[');
		FUNC7(s, FUNC8(typid));
		FUNC6(s, ']');

		/* query output function */
		FUNC9(typid,
						  &typoutput, &typisvarlena);

		/* print separator */
		FUNC6(s, ':');

		/* print data */
		if (isnull)
			FUNC7(s, "null");
		else if (typisvarlena && FUNC5(origval))
			FUNC7(s, "unchanged-toast-datum");
		else if (!typisvarlena)
			FUNC11(s, typid,
						  FUNC1(typoutput, origval));
		else
		{
			Datum		val;	/* definitely detoasted Datum */

			val = FUNC3(FUNC2(origval));
			FUNC11(s, typid, FUNC1(typoutput, val));
		}
	}
}