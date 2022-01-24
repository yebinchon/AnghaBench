#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * adw_entry; int /*<<< orphan*/  adw_minmulti; int /*<<< orphan*/  adw_frozenxid; int /*<<< orphan*/  adw_name; int /*<<< orphan*/  adw_datid; } ;
typedef  TYPE_1__ avw_dbase ;
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_5__ {int /*<<< orphan*/  datminmxid; int /*<<< orphan*/  datfrozenxid; int /*<<< orphan*/  datname; int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_database ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC15(void)
{
	List	   *dblist = NIL;
	Relation	rel;
	TableScanDesc scan;
	HeapTuple	tup;
	MemoryContext resultcxt;

	/* This is the context that we will allocate our output data in */
	resultcxt = CurrentMemoryContext;

	/*
	 * Start a transaction so we can access pg_database, and get a snapshot.
	 * We don't have a use for the snapshot itself, but we're interested in
	 * the secondary effect that it sets RecentGlobalXmin.  (This is critical
	 * for anything that reads heap pages, because HOT may decide to prune
	 * them even if the process doesn't attempt to modify any tuples.)
	 */
	FUNC6();
	(void) FUNC2();

	rel = FUNC14(DatabaseRelationId, AccessShareLock);
	scan = FUNC11(rel, 0, NULL);

	while (FUNC3(tup = FUNC7(scan, ForwardScanDirection)))
	{
		Form_pg_database pgdatabase = (Form_pg_database) FUNC1(tup);
		avw_dbase  *avdb;
		MemoryContext oldcxt;

		/*
		 * Allocate our results in the caller's context, not the
		 * transaction's. We do this inside the loop, and restore the original
		 * context at the end, so that leaky things like heap_getnext() are
		 * not called in a potentially long-lived context.
		 */
		oldcxt = FUNC4(resultcxt);

		avdb = (avw_dbase *) FUNC9(sizeof(avw_dbase));

		avdb->adw_datid = pgdatabase->oid;
		avdb->adw_name = FUNC10(FUNC5(pgdatabase->datname));
		avdb->adw_frozenxid = pgdatabase->datfrozenxid;
		avdb->adw_minmulti = pgdatabase->datminmxid;
		/* this gets set later: */
		avdb->adw_entry = NULL;

		dblist = FUNC8(dblist, avdb);
		FUNC4(oldcxt);
	}

	FUNC13(scan);
	FUNC12(rel, AccessShareLock);

	FUNC0();

	return dblist;
}