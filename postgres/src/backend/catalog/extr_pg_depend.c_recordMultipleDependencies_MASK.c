#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_12__ {int /*<<< orphan*/  objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_11__ {int /*<<< orphan*/  rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  scalar_t__ DependencyType ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/ * CatalogIndexState ;

/* Variables and functions */
 int Anum_pg_depend_classid ; 
 int Anum_pg_depend_deptype ; 
 int Anum_pg_depend_objid ; 
 int Anum_pg_depend_objsubid ; 
 int Anum_pg_depend_refclassid ; 
 int Anum_pg_depend_refobjid ; 
 int Anum_pg_depend_refobjsubid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  DependRelationId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int Natts_pg_depend ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC13(const ObjectAddress *depender,
						   const ObjectAddress *referenced,
						   int nreferenced,
						   DependencyType behavior)
{
	Relation	dependDesc;
	CatalogIndexState indstate;
	HeapTuple	tup;
	int			i;
	bool		nulls[Natts_pg_depend];
	Datum		values[Natts_pg_depend];

	if (nreferenced <= 0)
		return;					/* nothing to do */

	/*
	 * During bootstrap, do nothing since pg_depend may not exist yet. initdb
	 * will fill in appropriate pg_depend entries after bootstrap.
	 */
	if (FUNC5())
		return;

	dependDesc = FUNC12(DependRelationId, RowExclusiveLock);

	/* Don't open indexes unless we need to make an update */
	indstate = NULL;

	FUNC10(nulls, false, sizeof(nulls));

	for (i = 0; i < nreferenced; i++, referenced++)
	{
		/*
		 * If the referenced object is pinned by the system, there's no real
		 * need to record dependencies on it.  This saves lots of space in
		 * pg_depend, so it's worth the time taken to check.
		 */
		if (!FUNC9(referenced, dependDesc))
		{
			/*
			 * Record the Dependency.  Note we don't bother to check for
			 * duplicate dependencies; there's no harm in them.
			 */
			values[Anum_pg_depend_classid - 1] = FUNC6(depender->classId);
			values[Anum_pg_depend_objid - 1] = FUNC6(depender->objectId);
			values[Anum_pg_depend_objsubid - 1] = FUNC4(depender->objectSubId);

			values[Anum_pg_depend_refclassid - 1] = FUNC6(referenced->classId);
			values[Anum_pg_depend_refobjid - 1] = FUNC6(referenced->objectId);
			values[Anum_pg_depend_refobjsubid - 1] = FUNC4(referenced->objectSubId);

			values[Anum_pg_depend_deptype - 1] = FUNC3((char) behavior);

			tup = FUNC7(dependDesc->rd_att, values, nulls);

			/* fetch index info only when we know we need it */
			if (indstate == NULL)
				indstate = FUNC1(dependDesc);

			FUNC2(dependDesc, tup, indstate);

			FUNC8(tup);
		}
	}

	if (indstate != NULL)
		FUNC0(indstate);

	FUNC11(dependDesc, RowExclusiveLock);
}