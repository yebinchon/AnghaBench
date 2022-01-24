#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ reltype; } ;
struct TYPE_20__ {TYPE_3__* reldesc; } ;
struct TYPE_19__ {int /*<<< orphan*/ * rd_tableam; TYPE_2__* rd_rel; int /*<<< orphan*/ * rd_partdesc; int /*<<< orphan*/ * rd_partkey; int /*<<< orphan*/ * rd_rsdesc; int /*<<< orphan*/ * trigdesc; int /*<<< orphan*/ * rd_rules; TYPE_1__* rd_att; scalar_t__ rd_options; } ;
struct TYPE_18__ {scalar_t__ relowner; int relhasrules; int relhastriggers; scalar_t__ relkind; scalar_t__ relrowsecurity; } ;
struct TYPE_17__ {scalar_t__ tdtypeid; int tdtypmod; } ;
typedef  TYPE_3__* Relation ;
typedef  TYPE_4__ RelIdCacheEnt ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  TYPE_5__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  AccessMethodProcedureIndexId ; 
 int /*<<< orphan*/  AccessMethodProcedureRelationId ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  AttributeRelation_Rowtype_Id ; 
 int /*<<< orphan*/  AttributeRelidNumIndexId ; 
 int /*<<< orphan*/  AuthIdOidIndexId ; 
 int /*<<< orphan*/  AuthIdRelationId ; 
 int /*<<< orphan*/  AuthIdRolnameIndexId ; 
 int /*<<< orphan*/  AuthMemMemRoleIndexId ; 
 int /*<<< orphan*/  AuthMemRelationId ; 
 int /*<<< orphan*/  CLASS_TUPLE_SIZE ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  ClassOidIndexId ; 
 int /*<<< orphan*/  DatabaseNameIndexId ; 
 int /*<<< orphan*/  DatabaseOidIndexId ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  Desc_pg_attribute ; 
 int /*<<< orphan*/  Desc_pg_class ; 
 int /*<<< orphan*/  Desc_pg_proc ; 
 int /*<<< orphan*/  Desc_pg_type ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IndexRelationId ; 
 int /*<<< orphan*/  IndexRelidIndexId ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Natts_pg_attribute ; 
 int /*<<< orphan*/  Natts_pg_class ; 
 int /*<<< orphan*/  Natts_pg_proc ; 
 int /*<<< orphan*/  Natts_pg_type ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OpclassOidIndexId ; 
 int /*<<< orphan*/  OperatorClassRelationId ; 
 int /*<<< orphan*/  ProcedureRelation_Rowtype_Id ; 
 scalar_t__ RELKIND_MATVIEW ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELKIND_RELATION ; 
 scalar_t__ RELKIND_SEQUENCE ; 
 scalar_t__ RELKIND_TOASTVALUE ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  RelationIdCache ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RelationRelation_Rowtype_Id ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RewriteRelRulenameIndexId ; 
 int /*<<< orphan*/  RewriteRelationId ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SharedSecLabelObjectIndexId ; 
 int /*<<< orphan*/  SharedSecLabelRelationId ; 
 int /*<<< orphan*/  TriggerRelationId ; 
 int /*<<< orphan*/  TriggerRelidNameIndexId ; 
 int /*<<< orphan*/  TypeRelation_Rowtype_Id ; 
 int criticalRelcachesBuilt ; 
 int criticalSharedRelcachesBuilt ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 

void
FUNC31(void)
{
	HASH_SEQ_STATUS status;
	RelIdCacheEnt *idhentry;
	MemoryContext oldcxt;
	bool		needNewCacheFile = !criticalSharedRelcachesBuilt;

	/*
	 * relation mapper needs initialized too
	 */
	FUNC17();

	/*
	 * switch to cache memory context
	 */
	oldcxt = FUNC5(CacheMemoryContext);

	/*
	 * Try to load the local relcache cache file.  If unsuccessful, bootstrap
	 * the cache with pre-made descriptors for the critical "nailed-in" system
	 * catalogs.
	 */
	if (FUNC4() ||
		!FUNC27(false))
	{
		needNewCacheFile = true;

		FUNC22("pg_class", RelationRelation_Rowtype_Id, false,
				  Natts_pg_class, Desc_pg_class);
		FUNC22("pg_attribute", AttributeRelation_Rowtype_Id, false,
				  Natts_pg_attribute, Desc_pg_attribute);
		FUNC22("pg_proc", ProcedureRelation_Rowtype_Id, false,
				  Natts_pg_proc, Desc_pg_proc);
		FUNC22("pg_type", TypeRelation_Rowtype_Id, false,
				  Natts_pg_type, Desc_pg_type);

#define NUM_CRITICAL_LOCAL_RELS 4	/* fix if you change list above */
	}

	FUNC5(oldcxt);

	/* In bootstrap mode, the faked-up formrdesc info is all we'll have */
	if (FUNC4())
		return;

	/*
	 * If we didn't get the critical system indexes loaded into relcache, do
	 * so now.  These are critical because the catcache and/or opclass cache
	 * depend on them for fetches done during relcache load.  Thus, we have an
	 * infinite-recursion problem.  We can break the recursion by doing
	 * heapscans instead of indexscans at certain key spots. To avoid hobbling
	 * performance, we only want to do that until we have the critical indexes
	 * loaded into relcache.  Thus, the flag criticalRelcachesBuilt is used to
	 * decide whether to do heapscan or indexscan at the key spots, and we set
	 * it true after we've loaded the critical indexes.
	 *
	 * The critical indexes are marked as "nailed in cache", partly to make it
	 * easy for load_relcache_init_file to count them, but mainly because we
	 * cannot flush and rebuild them once we've set criticalRelcachesBuilt to
	 * true.  (NOTE: perhaps it would be possible to reload them by
	 * temporarily setting criticalRelcachesBuilt to false again.  For now,
	 * though, we just nail 'em in.)
	 *
	 * RewriteRelRulenameIndexId and TriggerRelidNameIndexId are not critical
	 * in the same way as the others, because the critical catalogs don't
	 * (currently) have any rules or triggers, and so these indexes can be
	 * rebuilt without inducing recursion.  However they are used during
	 * relcache load when a rel does have rules or triggers, so we choose to
	 * nail them for performance reasons.
	 */
	if (!criticalRelcachesBuilt)
	{
		FUNC26(ClassOidIndexId,
							RelationRelationId);
		FUNC26(AttributeRelidNumIndexId,
							AttributeRelationId);
		FUNC26(IndexRelidIndexId,
							IndexRelationId);
		FUNC26(OpclassOidIndexId,
							OperatorClassRelationId);
		FUNC26(AccessMethodProcedureIndexId,
							AccessMethodProcedureRelationId);
		FUNC26(RewriteRelRulenameIndexId,
							RewriteRelationId);
		FUNC26(TriggerRelidNameIndexId,
							TriggerRelationId);

#define NUM_CRITICAL_LOCAL_INDEXES	7	/* fix if you change list above */

		criticalRelcachesBuilt = true;
	}

	/*
	 * Process critical shared indexes too.
	 *
	 * DatabaseNameIndexId isn't critical for relcache loading, but rather for
	 * initial lookup of MyDatabaseId, without which we'll never find any
	 * non-shared catalogs at all.  Autovacuum calls InitPostgres with a
	 * database OID, so it instead depends on DatabaseOidIndexId.  We also
	 * need to nail up some indexes on pg_authid and pg_auth_members for use
	 * during client authentication.  SharedSecLabelObjectIndexId isn't
	 * critical for the core system, but authentication hooks might be
	 * interested in it.
	 */
	if (!criticalSharedRelcachesBuilt)
	{
		FUNC26(DatabaseNameIndexId,
							DatabaseRelationId);
		FUNC26(DatabaseOidIndexId,
							DatabaseRelationId);
		FUNC26(AuthIdRolnameIndexId,
							AuthIdRelationId);
		FUNC26(AuthIdOidIndexId,
							AuthIdRelationId);
		FUNC26(AuthMemMemRoleIndexId,
							AuthMemRelationId);
		FUNC26(SharedSecLabelObjectIndexId,
							SharedSecLabelRelationId);

#define NUM_CRITICAL_SHARED_INDEXES 6	/* fix if you change list above */

		criticalSharedRelcachesBuilt = true;
	}

	/*
	 * Now, scan all the relcache entries and update anything that might be
	 * wrong in the results from formrdesc or the relcache cache file. If we
	 * faked up relcache entries using formrdesc, then read the real pg_class
	 * rows and replace the fake entries with them. Also, if any of the
	 * relcache entries have rules, triggers, or security policies, load that
	 * info the hard way since it isn't recorded in the cache file.
	 *
	 * Whenever we access the catalogs to read data, there is a possibility of
	 * a shared-inval cache flush causing relcache entries to be removed.
	 * Since hash_seq_search only guarantees to still work after the *current*
	 * entry is removed, it's unsafe to continue the hashtable scan afterward.
	 * We handle this by restarting the scan from scratch after each access.
	 * This is theoretically O(N^2), but the number of entries that actually
	 * need to be fixed is small enough that it doesn't matter.
	 */
	FUNC23(&status, RelationIdCache);

	while ((idhentry = (RelIdCacheEnt *) FUNC24(&status)) != NULL)
	{
		Relation	relation = idhentry->reldesc;
		bool		restart = false;

		/*
		 * Make sure *this* entry doesn't get flushed while we work with it.
		 */
		FUNC15(relation);

		/*
		 * If it's a faked-up entry, read the real pg_class tuple.
		 */
		if (relation->rd_rel->relowner == InvalidOid)
		{
			HeapTuple	htup;
			Form_pg_class relp;

			htup = FUNC20(RELOID,
								   FUNC6(FUNC14(relation)));
			if (!FUNC2(htup))
				FUNC21(FATAL, "cache lookup failed for relation %u",
					 FUNC14(relation));
			relp = (Form_pg_class) FUNC1(htup);

			/*
			 * Copy tuple to relation->rd_rel. (See notes in
			 * AllocateRelationDesc())
			 */
			FUNC28((char *) relation->rd_rel, (char *) relp, CLASS_TUPLE_SIZE);

			/* Update rd_options while we have the tuple */
			if (relation->rd_options)
				FUNC29(relation->rd_options);
			FUNC18(relation, htup);

			/*
			 * Check the values in rd_att were set up correctly.  (We cannot
			 * just copy them over now: formrdesc must have set up the rd_att
			 * data correctly to start with, because it may already have been
			 * copied into one or more catcache entries.)
			 */
			FUNC0(relation->rd_att->tdtypeid == relp->reltype);
			FUNC0(relation->rd_att->tdtypmod == -1);

			FUNC19(htup);

			/* relowner had better be OK now, else we'll loop forever */
			if (relation->rd_rel->relowner == InvalidOid)
				FUNC21(ERROR, "invalid relowner in pg_class entry for \"%s\"",
					 FUNC13(relation));

			restart = true;
		}

		/*
		 * Fix data that isn't saved in relcache cache file.
		 *
		 * relhasrules or relhastriggers could possibly be wrong or out of
		 * date.  If we don't actually find any rules or triggers, clear the
		 * local copy of the flag so that we don't get into an infinite loop
		 * here.  We don't make any attempt to fix the pg_class entry, though.
		 */
		if (relation->rd_rel->relhasrules && relation->rd_rules == NULL)
		{
			FUNC10(relation);
			if (relation->rd_rules == NULL)
				relation->rd_rel->relhasrules = false;
			restart = true;
		}
		if (relation->rd_rel->relhastriggers && relation->trigdesc == NULL)
		{
			FUNC11(relation);
			if (relation->trigdesc == NULL)
				relation->rd_rel->relhastriggers = false;
			restart = true;
		}

		/*
		 * Re-load the row security policies if the relation has them, since
		 * they are not preserved in the cache.  Note that we can never NOT
		 * have a policy while relrowsecurity is true,
		 * RelationBuildRowSecurity will create a single default-deny policy
		 * if there is no policy defined in pg_policy.
		 */
		if (relation->rd_rel->relrowsecurity && relation->rd_rsdesc == NULL)
		{
			FUNC9(relation);

			FUNC0(relation->rd_rsdesc != NULL);
			restart = true;
		}

		/*
		 * Reload the partition key and descriptor for a partitioned table.
		 */
		if (relation->rd_rel->relkind == RELKIND_PARTITIONED_TABLE &&
			relation->rd_partkey == NULL)
		{
			FUNC8(relation);
			FUNC0(relation->rd_partkey != NULL);

			restart = true;
		}

		if (relation->rd_rel->relkind == RELKIND_PARTITIONED_TABLE &&
			relation->rd_partdesc == NULL)
		{
			FUNC7(relation);
			FUNC0(relation->rd_partdesc != NULL);

			restart = true;
		}

		if (relation->rd_tableam == NULL &&
			(relation->rd_rel->relkind == RELKIND_RELATION ||
			 relation->rd_rel->relkind == RELKIND_SEQUENCE ||
			 relation->rd_rel->relkind == RELKIND_TOASTVALUE ||
			 relation->rd_rel->relkind == RELKIND_MATVIEW))
		{
			FUNC16(relation);
			FUNC0(relation->rd_tableam != NULL);

			restart = true;
		}

		/* Release hold on the relation */
		FUNC12(relation);

		/* Now, restart the hashtable scan if needed */
		if (restart)
		{
			FUNC25(&status);
			FUNC23(&status, RelationIdCache);
		}
	}

	/*
	 * Lastly, write out new relcache cache files if needed.  We don't bother
	 * to distinguish cases where only one of the two needs an update.
	 */
	if (needNewCacheFile)
	{
		/*
		 * Force all the catcaches to finish initializing and thereby open the
		 * catalogs and indexes they use.  This will preload the relcache with
		 * entries for all the most important system catalogs and indexes, so
		 * that the init files will be most useful for future backends.
		 */
		FUNC3();

		/* now write the files */
		FUNC30(true);
		FUNC30(false);
	}
}