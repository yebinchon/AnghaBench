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
struct TYPE_13__ {int location; } ;
typedef  TYPE_1__ Var ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_16__ {int /*<<< orphan*/  colnames; } ;
struct TYPE_15__ {int /*<<< orphan*/  attcollation; int /*<<< orphan*/  atttypmod; int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attname; scalar_t__ attisdropped; } ;
struct TYPE_14__ {int natts; } ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  TYPE_4__ Alias ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  InvalidOid ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(TupleDesc tupdesc, Alias *eref, int count, int offset,
				int rtindex, int sublevels_up,
				int location, bool include_dropped,
				List **colnames, List **colvars)
{
	ListCell   *aliascell;
	int			varattno;

	aliascell = (offset < FUNC5(eref->colnames)) ?
		FUNC6(eref->colnames, offset) : NULL;

	FUNC0(count <= tupdesc->natts);
	for (varattno = 0; varattno < count; varattno++)
	{
		Form_pg_attribute attr = FUNC2(tupdesc, varattno);

		if (attr->attisdropped)
		{
			if (include_dropped)
			{
				if (colnames)
					*colnames = FUNC3(*colnames, FUNC9(FUNC11("")));
				if (colvars)
				{
					/*
					 * can't use atttypid here, but it doesn't really matter
					 * what type the Const claims to be.
					 */
					*colvars = FUNC3(*colvars,
									   FUNC8(INT4OID, -1, InvalidOid));
				}
			}
			if (aliascell)
				aliascell = FUNC7(eref->colnames, aliascell);
			continue;
		}

		if (colnames)
		{
			char	   *label;

			if (aliascell)
			{
				label = FUNC12(FUNC4(aliascell));
				aliascell = FUNC7(eref->colnames, aliascell);
			}
			else
			{
				/* If we run out of aliases, use the underlying name */
				label = FUNC1(attr->attname);
			}
			*colnames = FUNC3(*colnames, FUNC9(FUNC11(label)));
		}

		if (colvars)
		{
			Var		   *varnode;

			varnode = FUNC10(rtindex, varattno + offset + 1,
							  attr->atttypid, attr->atttypmod,
							  attr->attcollation,
							  sublevels_up);
			varnode->location = location;

			*colvars = FUNC3(*colvars, varnode);
		}
	}
}