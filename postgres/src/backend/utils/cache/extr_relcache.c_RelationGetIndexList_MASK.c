#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* indexrelid; scalar_t__ indisreplident; scalar_t__ indisprimary; int /*<<< orphan*/  indimmediate; int /*<<< orphan*/  indisunique; int /*<<< orphan*/  indisvalid; int /*<<< orphan*/  indislive; } ;
struct TYPE_10__ {int rd_indexvalid; void* rd_replidindex; void* rd_pkindex; int /*<<< orphan*/ * rd_indexlist; TYPE_1__* rd_rel; } ;
struct TYPE_9__ {char relreplident; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_2__* Relation ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_index ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_index_indpred ; 
 int /*<<< orphan*/  Anum_pg_index_indrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IndexIndrelidIndexId ; 
 int /*<<< orphan*/  IndexRelationId ; 
 void* InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (void*) ; 
 char REPLICA_IDENTITY_DEFAULT ; 
 char REPLICA_IDENTITY_INDEX ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_oid_cmp ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

List *
FUNC17(Relation relation)
{
	Relation	indrel;
	SysScanDesc indscan;
	ScanKeyData skey;
	HeapTuple	htup;
	List	   *result;
	List	   *oldlist;
	char		replident = relation->rd_rel->relreplident;
	Oid			pkeyIndex = InvalidOid;
	Oid			candidateIndex = InvalidOid;
	MemoryContext oldcxt;

	/* Quick exit if we already computed the list. */
	if (relation->rd_indexvalid)
		return FUNC9(relation->rd_indexlist);

	/*
	 * We build the list we intend to return (in the caller's context) while
	 * doing the scan.  After successfully completing the scan, we copy that
	 * list into the relcache entry.  This avoids cache-context memory leakage
	 * if we get some sort of error partway through.
	 */
	result = NIL;

	/* Prepare to scan pg_index for entries having indrelid = this rel. */
	FUNC6(&skey,
				Anum_pg_index_indrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(FUNC5(relation)));

	indrel = FUNC16(IndexRelationId, AccessShareLock);
	indscan = FUNC12(indrel, IndexIndrelidIndexId, true,
								 NULL, 1, &skey);

	while (FUNC1(htup = FUNC14(indscan)))
	{
		Form_pg_index index = (Form_pg_index) FUNC0(htup);

		/*
		 * Ignore any indexes that are currently being dropped.  This will
		 * prevent them from being searched, inserted into, or considered in
		 * HOT-safety decisions.  It's unsafe to touch such an index at all
		 * since its catalog entries could disappear at any instant.
		 */
		if (!index->indislive)
			continue;

		/* add index's OID to result list */
		result = FUNC8(result, index->indexrelid);

		/*
		 * Invalid, non-unique, non-immediate or predicate indexes aren't
		 * interesting for either oid indexes or replication identity indexes,
		 * so don't check them.
		 */
		if (!index->indisvalid || !index->indisunique ||
			!index->indimmediate ||
			!FUNC7(htup, Anum_pg_index_indpred, NULL))
			continue;

		/* remember primary key index if any */
		if (index->indisprimary)
			pkeyIndex = index->indexrelid;

		/* remember explicitly chosen replica index */
		if (index->indisreplident)
			candidateIndex = index->indexrelid;
	}

	FUNC13(indscan);

	FUNC15(indrel, AccessShareLock);

	/* Sort the result list into OID order, per API spec. */
	FUNC11(result, list_oid_cmp);

	/* Now save a copy of the completed list in the relcache entry. */
	oldcxt = FUNC2(CacheMemoryContext);
	oldlist = relation->rd_indexlist;
	relation->rd_indexlist = FUNC9(result);
	relation->rd_pkindex = pkeyIndex;
	if (replident == REPLICA_IDENTITY_DEFAULT && FUNC4(pkeyIndex))
		relation->rd_replidindex = pkeyIndex;
	else if (replident == REPLICA_IDENTITY_INDEX && FUNC4(candidateIndex))
		relation->rd_replidindex = candidateIndex;
	else
		relation->rd_replidindex = InvalidOid;
	relation->rd_indexvalid = true;
	FUNC2(oldcxt);

	/* Don't leak the old list, if there is one */
	FUNC10(oldlist);

	return result;
}