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
typedef  int /*<<< orphan*/  Tcl_Obj ;
struct TYPE_8__ {int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attname; scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_7__ {int natts; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  UTF_BEGIN ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  UTF_END ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static Tcl_Obj *
FUNC10(HeapTuple tuple, TupleDesc tupdesc, bool include_generated)
{
	Tcl_Obj    *retobj = FUNC3();
	int			i;
	char	   *outputstr;
	Datum		attr;
	bool		isnull;
	char	   *attname;
	Oid			typoutput;
	bool		typisvarlena;

	for (i = 0; i < tupdesc->natts; i++)
	{
		Form_pg_attribute att = FUNC5(tupdesc, i);

		/* ignore dropped attributes */
		if (att->attisdropped)
			continue;

		if (att->attgenerated)
		{
			/* don't include unless requested */
			if (!include_generated)
				continue;
		}

		/************************************************************
		 * Get the attribute name
		 ************************************************************/
		attname = FUNC0(att->attname);

		/************************************************************
		 * Get the attributes value
		 ************************************************************/
		attr = FUNC8(tuple, i + 1, tupdesc, &isnull);

		/************************************************************
		 * If there is a value, append the attribute name and the
		 * value to the list
		 *
		 * Hmmm - Null attributes will cause functions to
		 *		  crash if they don't expect them - need something
		 *		  smarter here.
		 ************************************************************/
		if (!isnull)
		{
			FUNC7(att->atttypid,
							  &typoutput, &typisvarlena);
			outputstr = FUNC1(typoutput, attr);
			UTF_BEGIN;
			FUNC2(NULL, retobj,
									 FUNC4(FUNC6(attname), -1));
			UTF_END;
			UTF_BEGIN;
			FUNC2(NULL, retobj,
									 FUNC4(FUNC6(outputstr), -1));
			UTF_END;
			FUNC9(outputstr);
		}
	}

	return retobj;
}