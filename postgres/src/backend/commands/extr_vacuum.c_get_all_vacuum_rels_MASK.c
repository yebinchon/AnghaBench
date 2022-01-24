#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_3__ {scalar_t__ relkind; int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ RELKIND_MATVIEW ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELKIND_RELATION ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vac_context ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static List *
FUNC10(int options)
{
	List	   *vacrels = NIL;
	Relation	pgclass;
	TableScanDesc scan;
	HeapTuple	tuple;

	pgclass = FUNC8(RelationRelationId, AccessShareLock);

	scan = FUNC5(pgclass, 0, NULL);

	while ((tuple = FUNC2(scan, ForwardScanDirection)) != NULL)
	{
		Form_pg_class classForm = (Form_pg_class) FUNC0(tuple);
		MemoryContext oldcontext;
		Oid			relid = classForm->oid;

		/* check permissions of relation */
		if (!FUNC9(relid, classForm, options))
			continue;

		/*
		 * We include partitioned tables here; depending on which operation is
		 * to be performed, caller will decide whether to process or ignore
		 * them.
		 */
		if (classForm->relkind != RELKIND_RELATION &&
			classForm->relkind != RELKIND_MATVIEW &&
			classForm->relkind != RELKIND_PARTITIONED_TABLE)
			continue;

		/*
		 * Build VacuumRelation(s) specifying the table OIDs to be processed.
		 * We omit a RangeVar since it wouldn't be appropriate to complain
		 * about failure to open one of these relations later.
		 */
		oldcontext = FUNC1(vac_context);
		vacrels = FUNC3(vacrels, FUNC4(NULL,
													  relid,
													  NIL));
		FUNC1(oldcontext);
	}

	FUNC7(scan);
	FUNC6(pgclass, AccessShareLock);

	return vacrels;
}