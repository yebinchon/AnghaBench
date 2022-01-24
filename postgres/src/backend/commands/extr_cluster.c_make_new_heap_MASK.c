#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {int reltoastrelid; int /*<<< orphan*/  relam; int /*<<< orphan*/  relowner; } ;
typedef  TYPE_2__* Relation ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  NewHeapName ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_class_reloptions ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int InvalidOid ; 
 int FUNC3 (char*) ; 
 int NAMEDATALEN ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  ONCOMMIT_NOOP ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  RELKIND_RELATION ; 
 int /*<<< orphan*/  RELOID ; 
 char RELPERSISTENCE_TEMP ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC14 (char*,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC17 (int,int /*<<< orphan*/ ) ; 

Oid
FUNC18(Oid OIDOldHeap, Oid NewTableSpace, char relpersistence,
			  LOCKMODE lockmode)
{
	TupleDesc	OldHeapDesc;
	char		NewHeapName[NAMEDATALEN];
	Oid			OIDNewHeap;
	Oid			toastid;
	Relation	OldHeap;
	HeapTuple	tuple;
	Datum		reloptions;
	bool		isNull;
	Oid			namespaceid;

	OldHeap = FUNC17(OIDOldHeap, lockmode);
	OldHeapDesc = FUNC7(OldHeap);

	/*
	 * Note that the NewHeap will not receive any of the defaults or
	 * constraints associated with the OldHeap; we don't need 'em, and there's
	 * no reason to spend cycles inserting them into the catalogs only to
	 * delete them.
	 */

	/*
	 * But we do want to use reloptions of the old heap for new heap.
	 */
	tuple = FUNC11(RELOID, FUNC5(OIDOldHeap));
	if (!FUNC2(tuple))
		FUNC13(ERROR, "cache lookup failed for relation %u", OIDOldHeap);
	reloptions = FUNC12(RELOID, tuple, Anum_pg_class_reloptions,
								 &isNull);
	if (isNull)
		reloptions = (Datum) 0;

	if (relpersistence == RELPERSISTENCE_TEMP)
		namespaceid = FUNC3("pg_temp");
	else
		namespaceid = FUNC8(OldHeap);

	/*
	 * Create the new heap, using a temporary name in the same namespace as
	 * the existing table.  NOTE: there is some risk of collision with user
	 * relnames.  Working around this seems more trouble than it's worth; in
	 * particular, we can't create the new heap in a different namespace from
	 * the old, or we will have problems with the TEMP status of temp tables.
	 *
	 * Note: the new heap is not a shared relation, even if we are rebuilding
	 * a shared rel.  However, we do make the new heap mapped if the source is
	 * mapped.  This simplifies swap_relation_files, and is absolutely
	 * necessary for rebuilding pg_class, for reasons explained there.
	 */
	FUNC15(NewHeapName, sizeof(NewHeapName), "pg_temp_%u", OIDOldHeap);

	OIDNewHeap = FUNC14(NewHeapName,
										  namespaceid,
										  NewTableSpace,
										  InvalidOid,
										  InvalidOid,
										  InvalidOid,
										  OldHeap->rd_rel->relowner,
										  OldHeap->rd_rel->relam,
										  OldHeapDesc,
										  NIL,
										  RELKIND_RELATION,
										  relpersistence,
										  false,
										  FUNC9(OldHeap),
										  ONCOMMIT_NOOP,
										  reloptions,
										  false,
										  true,
										  true,
										  OIDOldHeap,
										  NULL);
	FUNC0(OIDNewHeap != InvalidOid);

	FUNC10(tuple);

	/*
	 * Advance command counter so that the newly-created relation's catalog
	 * tuples will be visible to table_open.
	 */
	FUNC1();

	/*
	 * If necessary, create a TOAST table for the new relation.
	 *
	 * If the relation doesn't have a TOAST table already, we can't need one
	 * for the new relation.  The other way around is possible though: if some
	 * wide columns have been dropped, NewHeapCreateToastTable can decide that
	 * no TOAST table is needed for the new table.
	 *
	 * Note that NewHeapCreateToastTable ends with CommandCounterIncrement, so
	 * that the TOAST table will be visible for insertion.
	 */
	toastid = OldHeap->rd_rel->reltoastrelid;
	if (FUNC6(toastid))
	{
		/* keep the existing toast table's reloptions, if any */
		tuple = FUNC11(RELOID, FUNC5(toastid));
		if (!FUNC2(tuple))
			FUNC13(ERROR, "cache lookup failed for relation %u", toastid);
		reloptions = FUNC12(RELOID, tuple, Anum_pg_class_reloptions,
									 &isNull);
		if (isNull)
			reloptions = (Datum) 0;

		FUNC4(OIDNewHeap, reloptions, lockmode);

		FUNC10(tuple);
	}

	FUNC16(OldHeap, NoLock);

	return OIDNewHeap;
}