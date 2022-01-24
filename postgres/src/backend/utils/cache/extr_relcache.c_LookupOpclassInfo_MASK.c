#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ctl ;
struct TYPE_11__ {int amprocnum; int /*<<< orphan*/  amproc; } ;
struct TYPE_10__ {scalar_t__ opcfamily; scalar_t__ opcintype; } ;
struct TYPE_9__ {int keysize; int entrysize; } ;
struct TYPE_8__ {int valid; scalar_t__ numSupport; scalar_t__ opcfamily; scalar_t__ opcintype; int /*<<< orphan*/ * supportProcs; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  scalar_t__ StrategyNumber ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  RegProcedure ;
typedef  TYPE_1__ OpClassCacheEnt ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ HASHCTL ;
typedef  TYPE_3__* Form_pg_opclass ;
typedef  TYPE_4__* Form_pg_amproc ;

/* Variables and functions */
 int /*<<< orphan*/  AccessMethodProcedureIndexId ; 
 int /*<<< orphan*/  AccessMethodProcedureRelationId ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_amproc_amprocfamily ; 
 int /*<<< orphan*/  Anum_pg_amproc_amproclefttype ; 
 int /*<<< orphan*/  Anum_pg_amproc_amprocrighttype ; 
 int /*<<< orphan*/  Anum_pg_opclass_oid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ INT2_BTREE_OPS_OID ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ OID_BTREE_OPS_OID ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/ * OpClassCache ; 
 int /*<<< orphan*/  OpclassOidIndexId ; 
 int /*<<< orphan*/  OperatorClassRelationId ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ criticalRelcachesBuilt ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/ * FUNC9 (char*,int,TYPE_2__*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static OpClassCacheEnt *
FUNC16(Oid operatorClassOid,
				  StrategyNumber numSupport)
{
	OpClassCacheEnt *opcentry;
	bool		found;
	Relation	rel;
	SysScanDesc scan;
	ScanKeyData skey[3];
	HeapTuple	htup;
	bool		indexOK;

	if (OpClassCache == NULL)
	{
		/* First time through: initialize the opclass cache */
		HASHCTL		ctl;

		FUNC4(&ctl, 0, sizeof(ctl));
		ctl.keysize = sizeof(Oid);
		ctl.entrysize = sizeof(OpClassCacheEnt);
		OpClassCache = FUNC9("Operator class cache", 64,
								   &ctl, HASH_ELEM | HASH_BLOBS);

		/* Also make sure CacheMemoryContext exists */
		if (!CacheMemoryContext)
			FUNC1();
	}

	opcentry = (OpClassCacheEnt *) FUNC10(OpClassCache,
											   (void *) &operatorClassOid,
											   HASH_ENTER, &found);

	if (!found)
	{
		/* Need to allocate memory for new entry */
		opcentry->valid = false;	/* until known OK */
		opcentry->numSupport = numSupport;

		if (numSupport > 0)
			opcentry->supportProcs = (RegProcedure *)
				FUNC5(CacheMemoryContext,
									   numSupport * sizeof(RegProcedure));
		else
			opcentry->supportProcs = NULL;
	}
	else
	{
		FUNC0(numSupport == opcentry->numSupport);
	}

	/*
	 * When testing for cache-flush hazards, we intentionally disable the
	 * operator class cache and force reloading of the info on each call. This
	 * is helpful because we want to test the case where a cache flush occurs
	 * while we are loading the info, and it's very hard to provoke that if
	 * this happens only once per opclass per backend.
	 */
#if defined(CLOBBER_CACHE_ALWAYS)
	opcentry->valid = false;
#endif

	if (opcentry->valid)
		return opcentry;

	/*
	 * Need to fill in new entry.
	 *
	 * To avoid infinite recursion during startup, force heap scans if we're
	 * looking up info for the opclasses used by the indexes we would like to
	 * reference here.
	 */
	indexOK = criticalRelcachesBuilt ||
		(operatorClassOid != OID_BTREE_OPS_OID &&
		 operatorClassOid != INT2_BTREE_OPS_OID);

	/*
	 * We have to fetch the pg_opclass row to determine its opfamily and
	 * opcintype, which are needed to look up related operators and functions.
	 * It'd be convenient to use the syscache here, but that probably doesn't
	 * work while bootstrapping.
	 */
	FUNC7(&skey[0],
				Anum_pg_opclass_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC6(operatorClassOid));
	rel = FUNC15(OperatorClassRelationId, AccessShareLock);
	scan = FUNC11(rel, OpclassOidIndexId, indexOK,
							  NULL, 1, skey);

	if (FUNC3(htup = FUNC13(scan)))
	{
		Form_pg_opclass opclassform = (Form_pg_opclass) FUNC2(htup);

		opcentry->opcfamily = opclassform->opcfamily;
		opcentry->opcintype = opclassform->opcintype;
	}
	else
		FUNC8(ERROR, "could not find tuple for opclass %u", operatorClassOid);

	FUNC12(scan);
	FUNC14(rel, AccessShareLock);

	/*
	 * Scan pg_amproc to obtain support procs for the opclass.  We only fetch
	 * the default ones (those with lefttype = righttype = opcintype).
	 */
	if (numSupport > 0)
	{
		FUNC7(&skey[0],
					Anum_pg_amproc_amprocfamily,
					BTEqualStrategyNumber, F_OIDEQ,
					FUNC6(opcentry->opcfamily));
		FUNC7(&skey[1],
					Anum_pg_amproc_amproclefttype,
					BTEqualStrategyNumber, F_OIDEQ,
					FUNC6(opcentry->opcintype));
		FUNC7(&skey[2],
					Anum_pg_amproc_amprocrighttype,
					BTEqualStrategyNumber, F_OIDEQ,
					FUNC6(opcentry->opcintype));
		rel = FUNC15(AccessMethodProcedureRelationId, AccessShareLock);
		scan = FUNC11(rel, AccessMethodProcedureIndexId, indexOK,
								  NULL, 3, skey);

		while (FUNC3(htup = FUNC13(scan)))
		{
			Form_pg_amproc amprocform = (Form_pg_amproc) FUNC2(htup);

			if (amprocform->amprocnum <= 0 ||
				(StrategyNumber) amprocform->amprocnum > numSupport)
				FUNC8(ERROR, "invalid amproc number %d for opclass %u",
					 amprocform->amprocnum, operatorClassOid);

			opcentry->supportProcs[amprocform->amprocnum - 1] =
				amprocform->amproc;
		}

		FUNC12(scan);
		FUNC14(rel, AccessShareLock);
	}

	opcentry->valid = true;
	return opcentry;
}