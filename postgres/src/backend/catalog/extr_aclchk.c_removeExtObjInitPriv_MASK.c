#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ relkind; int relnatts; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNUM ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ RELKIND_COMPOSITE_TYPE ; 
 scalar_t__ RELKIND_INDEX ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 scalar_t__ RELKIND_SEQUENCE ; 
 int /*<<< orphan*/  RELOID ; 
 scalar_t__ RelationRelationId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ *) ; 

void
FUNC9(Oid objoid, Oid classoid)
{
	/*
	 * If this is a relation then we need to see if there are any sub-objects
	 * (eg: columns) for it and, if so, be sure to call
	 * recordExtensionInitPrivWorker() for each one.
	 */
	if (classoid == RelationRelationId)
	{
		Form_pg_class pg_class_tuple;
		HeapTuple	tuple;

		tuple = FUNC5(RELOID, FUNC3(objoid));
		if (!FUNC1(tuple))
			FUNC7(ERROR, "cache lookup failed for relation %u", objoid);
		pg_class_tuple = (Form_pg_class) FUNC0(tuple);

		/* Indexes don't have permissions */
		if (pg_class_tuple->relkind == RELKIND_INDEX ||
			pg_class_tuple->relkind == RELKIND_PARTITIONED_INDEX)
			return;

		/* Composite types don't have permissions either */
		if (pg_class_tuple->relkind == RELKIND_COMPOSITE_TYPE)
			return;

		/*
		 * If this isn't a sequence, index, or composite type then it's
		 * possibly going to have columns associated with it that might have
		 * ACLs.
		 */
		if (pg_class_tuple->relkind != RELKIND_SEQUENCE)
		{
			AttrNumber	curr_att;
			AttrNumber	nattrs = pg_class_tuple->relnatts;

			for (curr_att = 1; curr_att <= nattrs; curr_att++)
			{
				HeapTuple	attTuple;

				attTuple = FUNC6(ATTNUM,
										   FUNC3(objoid),
										   FUNC2(curr_att));

				if (!FUNC1(attTuple))
					continue;

				/* when removing, remove all entries, even dropped columns */

				FUNC8(objoid, classoid, curr_att, NULL);

				FUNC4(attTuple);
			}
		}

		FUNC4(tuple);
	}

	/* Remove the record, if any, for the top-level object */
	FUNC8(objoid, classoid, 0, NULL);
}