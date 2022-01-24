#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {scalar_t__ index_cleanup; scalar_t__ truncate; scalar_t__ log_min_duration; int options; scalar_t__ is_wraparound; int /*<<< orphan*/  multixact_freeze_table_age; int /*<<< orphan*/  multixact_freeze_min_age; int /*<<< orphan*/  freeze_table_age; int /*<<< orphan*/  freeze_min_age; } ;
typedef  TYPE_2__ VacuumParams ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_31__ {scalar_t__ old_rel_pages; double old_live_tuples; int lock_waiter_detected; int useindex; scalar_t__ scanned_pages; scalar_t__ frozenskipped_pages; scalar_t__ rel_pages; double new_live_tuples; scalar_t__ tupcount_pages; int /*<<< orphan*/  new_dead_tuples; int /*<<< orphan*/  new_rel_tuples; int /*<<< orphan*/  tuples_deleted; int /*<<< orphan*/  pinskipped_pages; scalar_t__ pages_removed; scalar_t__ num_index_scans; } ;
struct TYPE_30__ {TYPE_1__* rd_rel; } ;
struct TYPE_29__ {int /*<<< orphan*/  data; } ;
struct TYPE_27__ {scalar_t__ relpages; double reltuples; int /*<<< orphan*/  relisshared; int /*<<< orphan*/  relminmxid; int /*<<< orphan*/  relfrozenxid; } ;
typedef  TYPE_3__ StringInfoData ;
typedef  TYPE_4__* Relation ;
typedef  int /*<<< orphan*/  PGRUsage ;
typedef  int /*<<< orphan*/  MultiXactId ;
typedef  TYPE_5__ LVRelStats ;
typedef  int /*<<< orphan*/  BufferAccessStrategy ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLCKSZ ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FreezeLimit ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  InvalidMultiXactId ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  MultiXactCutoff ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  OldestXmin ; 
 int /*<<< orphan*/  PROGRESS_COMMAND_VACUUM ; 
 int /*<<< orphan*/  PROGRESS_VACUUM_PHASE ; 
 int /*<<< orphan*/  PROGRESS_VACUUM_PHASE_FINAL_CLEANUP ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long*,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VACOPT_DISABLE_PAGE_SKIPPING ; 
 scalar_t__ VACOPT_TERNARY_DEFAULT ; 
 scalar_t__ VACOPT_TERNARY_ENABLED ; 
 int VACOPT_VERBOSE ; 
 double VacuumPageDirty ; 
 int /*<<< orphan*/  VacuumPageHit ; 
 double VacuumPageMiss ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,char*,double,...) ; 
 int /*<<< orphan*/  elevel ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,TYPE_2__*,TYPE_5__*,TYPE_4__**,int,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC31 (int,TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_4__*,int /*<<< orphan*/ ,int*,TYPE_4__***) ; 
 int /*<<< orphan*/  vac_strategy ; 
 int /*<<< orphan*/  FUNC33 (TYPE_4__*,scalar_t__,double,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_4__*,scalar_t__*,int /*<<< orphan*/ *) ; 

void
FUNC36(Relation onerel, VacuumParams *params,
				BufferAccessStrategy bstrategy)
{
	LVRelStats *vacrelstats;
	Relation   *Irel;
	int			nindexes;
	PGRUsage	ru0;
	TimestampTz starttime = 0;
	long		secs;
	int			usecs;
	double		read_rate,
				write_rate;
	bool		aggressive;		/* should we scan all unfrozen pages? */
	bool		scanned_all_unfrozen;	/* actually scanned all such pages? */
	TransactionId xidFullScanLimit;
	MultiXactId mxactFullScanLimit;
	BlockNumber new_rel_pages;
	BlockNumber new_rel_allvisible;
	double		new_live_tuples;
	TransactionId new_frozen_xid;
	MultiXactId new_min_multi;

	FUNC0(params != NULL);
	FUNC0(params->index_cleanup != VACOPT_TERNARY_DEFAULT);
	FUNC0(params->truncate != VACOPT_TERNARY_DEFAULT);

	/* not every AM requires these to be valid, but heap does */
	FUNC0(FUNC10(onerel->rd_rel->relfrozenxid));
	FUNC0(FUNC3(onerel->rd_rel->relminmxid));

	/* measure elapsed time iff autovacuum logging requires it */
	if (FUNC2() && params->log_min_duration >= 0)
	{
		FUNC24(&ru0);
		starttime = FUNC1();
	}

	if (params->options & VACOPT_VERBOSE)
		elevel = INFO;
	else
		elevel = DEBUG2;

	FUNC27(PROGRESS_COMMAND_VACUUM,
								  FUNC7(onerel));

	vac_strategy = bstrategy;

	FUNC34(onerel,
						  params->freeze_min_age,
						  params->freeze_table_age,
						  params->multixact_freeze_min_age,
						  params->multixact_freeze_table_age,
						  &OldestXmin, &FreezeLimit, &xidFullScanLimit,
						  &MultiXactCutoff, &mxactFullScanLimit);

	/*
	 * We request an aggressive scan if the table's frozen Xid is now older
	 * than or equal to the requested Xid full-table scan limit; or if the
	 * table's minimum MultiXactId is older than or equal to the requested
	 * mxid full-table scan limit; or if DISABLE_PAGE_SKIPPING was specified.
	 */
	aggressive = FUNC11(onerel->rd_rel->relfrozenxid,
											   xidFullScanLimit);
	aggressive |= FUNC4(onerel->rd_rel->relminmxid,
											  mxactFullScanLimit);
	if (params->options & VACOPT_DISABLE_PAGE_SKIPPING)
		aggressive = true;

	/*
	 * Normally the relfrozenxid for an anti-wraparound vacuum will be old
	 * enough to force an aggressive vacuum.  However, a concurrent vacuum
	 * might have already done this work that the relfrozenxid in relcache has
	 * been updated.  If that happens this vacuum is redundant, so skip it.
	 */
	if (params->is_wraparound && !aggressive)
	{
		FUNC14(DEBUG1,
				(FUNC15("skipping redundant vacuum to prevent wraparound of table \"%s.%s.%s\"",
						FUNC17(MyDatabaseId),
						FUNC18(FUNC5(onerel)),
						FUNC6(onerel))));
		FUNC26();
		return;
	}

	vacrelstats = (LVRelStats *) FUNC22(sizeof(LVRelStats));

	vacrelstats->old_rel_pages = onerel->rd_rel->relpages;
	vacrelstats->old_live_tuples = onerel->rd_rel->reltuples;
	vacrelstats->num_index_scans = 0;
	vacrelstats->pages_removed = 0;
	vacrelstats->lock_waiter_detected = false;

	/* Open all indexes of the relation */
	FUNC32(onerel, RowExclusiveLock, &nindexes, &Irel);
	vacrelstats->useindex = (nindexes > 0 &&
							 params->index_cleanup == VACOPT_TERNARY_ENABLED);

	/* Do the vacuuming */
	FUNC20(onerel, params, vacrelstats, Irel, nindexes, aggressive);

	/* Done with indexes */
	FUNC31(nindexes, Irel, NoLock);

	/*
	 * Compute whether we actually scanned the all unfrozen pages. If we did,
	 * we can adjust relfrozenxid and relminmxid.
	 *
	 * NB: We need to check this before truncating the relation, because that
	 * will change ->rel_pages.
	 */
	if ((vacrelstats->scanned_pages + vacrelstats->frozenskipped_pages)
		< vacrelstats->rel_pages)
	{
		FUNC0(!aggressive);
		scanned_all_unfrozen = false;
	}
	else
		scanned_all_unfrozen = true;

	/*
	 * Optionally truncate the relation.
	 */
	if (FUNC30(params, vacrelstats))
		FUNC21(onerel, vacrelstats);

	/* Report that we are now doing final cleanup */
	FUNC28(PROGRESS_VACUUM_PHASE,
								 PROGRESS_VACUUM_PHASE_FINAL_CLEANUP);

	/*
	 * Update statistics in pg_class.
	 *
	 * A corner case here is that if we scanned no pages at all because every
	 * page is all-visible, we should not update relpages/reltuples, because
	 * we have no new information to contribute.  In particular this keeps us
	 * from replacing relpages=reltuples=0 (which means "unknown tuple
	 * density") with nonzero relpages and reltuples=0 (which means "zero
	 * tuple density") unless there's some actual evidence for the latter.
	 *
	 * It's important that we use tupcount_pages and not scanned_pages for the
	 * check described above; scanned_pages counts pages where we could not
	 * get cleanup lock, and which were processed only for frozenxid purposes.
	 *
	 * We do update relallvisible even in the corner case, since if the table
	 * is all-visible we'd definitely like to know that.  But clamp the value
	 * to be not more than what we're setting relpages to.
	 *
	 * Also, don't change relfrozenxid/relminmxid if we skipped any pages,
	 * since then we don't know for certain that all tuples have a newer xmin.
	 */
	new_rel_pages = vacrelstats->rel_pages;
	new_live_tuples = vacrelstats->new_live_tuples;
	if (vacrelstats->tupcount_pages == 0 && new_rel_pages > 0)
	{
		new_rel_pages = vacrelstats->old_rel_pages;
		new_live_tuples = vacrelstats->old_live_tuples;
	}

	FUNC35(onerel, &new_rel_allvisible, NULL);
	if (new_rel_allvisible > new_rel_pages)
		new_rel_allvisible = new_rel_pages;

	new_frozen_xid = scanned_all_unfrozen ? FreezeLimit : InvalidTransactionId;
	new_min_multi = scanned_all_unfrozen ? MultiXactCutoff : InvalidMultiXactId;

	FUNC33(onerel,
						new_rel_pages,
						new_live_tuples,
						new_rel_allvisible,
						nindexes > 0,
						new_frozen_xid,
						new_min_multi,
						false);

	/* report results to the stats collector, too */
	FUNC29(FUNC7(onerel),
						 onerel->rd_rel->relisshared,
						 new_live_tuples,
						 vacrelstats->new_dead_tuples);
	FUNC26();

	/* and log the action if appropriate */
	if (FUNC2() && params->log_min_duration >= 0)
	{
		TimestampTz endtime = FUNC1();

		if (params->log_min_duration == 0 ||
			FUNC9(starttime, endtime,
									   params->log_min_duration))
		{
			StringInfoData buf;
			char	   *msgfmt;

			FUNC8(starttime, endtime, &secs, &usecs);

			read_rate = 0;
			write_rate = 0;
			if ((secs > 0) || (usecs > 0))
			{
				read_rate = (double) BLCKSZ * VacuumPageMiss / (1024 * 1024) /
					(secs + usecs / 1000000.0);
				write_rate = (double) BLCKSZ * VacuumPageDirty / (1024 * 1024) /
					(secs + usecs / 1000000.0);
			}

			/*
			 * This is pretty messy, but we split it up so that we can skip
			 * emitting individual parts of the message when not applicable.
			 */
			FUNC19(&buf);
			if (params->is_wraparound)
			{
				/* an anti-wraparound vacuum has to be aggressive */
				FUNC0(aggressive);
				msgfmt = FUNC12("automatic aggressive vacuum to prevent wraparound of table \"%s.%s.%s\": index scans: %d\n");
			}
			else
			{
				if (aggressive)
					msgfmt = FUNC12("automatic aggressive vacuum of table \"%s.%s.%s\": index scans: %d\n");
				else
					msgfmt = FUNC12("automatic vacuum of table \"%s.%s.%s\": index scans: %d\n");
			}
			FUNC13(&buf, msgfmt,
							 FUNC17(MyDatabaseId),
							 FUNC18(FUNC5(onerel)),
							 FUNC6(onerel),
							 vacrelstats->num_index_scans);
			FUNC13(&buf, FUNC12("pages: %u removed, %u remain, %u skipped due to pins, %u skipped frozen\n"),
							 vacrelstats->pages_removed,
							 vacrelstats->rel_pages,
							 vacrelstats->pinskipped_pages,
							 vacrelstats->frozenskipped_pages);
			FUNC13(&buf,
							 FUNC12("tuples: %.0f removed, %.0f remain, %.0f are dead but not yet removable, oldest xmin: %u\n"),
							 vacrelstats->tuples_deleted,
							 vacrelstats->new_rel_tuples,
							 vacrelstats->new_dead_tuples,
							 OldestXmin);
			FUNC13(&buf,
							 FUNC12("buffer usage: %d hits, %d misses, %d dirtied\n"),
							 VacuumPageHit,
							 VacuumPageMiss,
							 VacuumPageDirty);
			FUNC13(&buf, FUNC12("avg read rate: %.3f MB/s, avg write rate: %.3f MB/s\n"),
							 read_rate, write_rate);
			FUNC13(&buf, FUNC12("system usage: %s"), FUNC25(&ru0));

			FUNC14(LOG,
					(FUNC16("%s", buf.data)));
			FUNC23(buf.data);
		}
	}
}