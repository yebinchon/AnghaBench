
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_28__ {scalar_t__ index_cleanup; scalar_t__ truncate; scalar_t__ log_min_duration; int options; scalar_t__ is_wraparound; int multixact_freeze_table_age; int multixact_freeze_min_age; int freeze_table_age; int freeze_min_age; } ;
typedef TYPE_2__ VacuumParams ;
typedef int TransactionId ;
typedef int TimestampTz ;
struct TYPE_31__ {scalar_t__ old_rel_pages; double old_live_tuples; int lock_waiter_detected; int useindex; scalar_t__ scanned_pages; scalar_t__ frozenskipped_pages; scalar_t__ rel_pages; double new_live_tuples; scalar_t__ tupcount_pages; int new_dead_tuples; int new_rel_tuples; int tuples_deleted; int pinskipped_pages; scalar_t__ pages_removed; scalar_t__ num_index_scans; } ;
struct TYPE_30__ {TYPE_1__* rd_rel; } ;
struct TYPE_29__ {int data; } ;
struct TYPE_27__ {scalar_t__ relpages; double reltuples; int relisshared; int relminmxid; int relfrozenxid; } ;
typedef TYPE_3__ StringInfoData ;
typedef TYPE_4__* Relation ;
typedef int PGRUsage ;
typedef int MultiXactId ;
typedef TYPE_5__ LVRelStats ;
typedef int BufferAccessStrategy ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BLCKSZ ;
 int DEBUG1 ;
 int DEBUG2 ;
 int FreezeLimit ;
 int GetCurrentTimestamp () ;
 int INFO ;
 int InvalidMultiXactId ;
 int InvalidTransactionId ;
 scalar_t__ IsAutoVacuumWorkerProcess () ;
 int LOG ;
 int MultiXactCutoff ;
 int MultiXactIdIsValid (int ) ;
 int MultiXactIdPrecedesOrEquals (int ,int ) ;
 int MyDatabaseId ;
 int NoLock ;
 int OldestXmin ;
 int PROGRESS_COMMAND_VACUUM ;
 int PROGRESS_VACUUM_PHASE ;
 int PROGRESS_VACUUM_PHASE_FINAL_CLEANUP ;
 int RelationGetNamespace (TYPE_4__*) ;
 int RelationGetRelationName (TYPE_4__*) ;
 int RelationGetRelid (TYPE_4__*) ;
 int RowExclusiveLock ;
 int TimestampDifference (int ,int ,long*,int*) ;
 scalar_t__ TimestampDifferenceExceeds (int ,int ,scalar_t__) ;
 int TransactionIdIsNormal (int ) ;
 int TransactionIdPrecedesOrEquals (int ,int ) ;
 int VACOPT_DISABLE_PAGE_SKIPPING ;
 scalar_t__ VACOPT_TERNARY_DEFAULT ;
 scalar_t__ VACOPT_TERNARY_ENABLED ;
 int VACOPT_VERBOSE ;
 double VacuumPageDirty ;
 int VacuumPageHit ;
 double VacuumPageMiss ;
 char* _ (char*) ;
 int appendStringInfo (TYPE_3__*,char*,double,...) ;
 int elevel ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,int ,int ) ;
 int errmsg_internal (char*,int ) ;
 int get_database_name (int ) ;
 int get_namespace_name (int ) ;
 int initStringInfo (TYPE_3__*) ;
 int lazy_scan_heap (TYPE_4__*,TYPE_2__*,TYPE_5__*,TYPE_4__**,int,int) ;
 int lazy_truncate_heap (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ palloc0 (int) ;
 int pfree (int ) ;
 int pg_rusage_init (int *) ;
 int pg_rusage_show (int *) ;
 int pgstat_progress_end_command () ;
 int pgstat_progress_start_command (int ,int ) ;
 int pgstat_progress_update_param (int ,int ) ;
 int pgstat_report_vacuum (int ,int ,double,int ) ;
 scalar_t__ should_attempt_truncation (TYPE_2__*,TYPE_5__*) ;
 int vac_close_indexes (int,TYPE_4__**,int ) ;
 int vac_open_indexes (TYPE_4__*,int ,int*,TYPE_4__***) ;
 int vac_strategy ;
 int vac_update_relstats (TYPE_4__*,scalar_t__,double,scalar_t__,int,int ,int ,int) ;
 int vacuum_set_xid_limits (TYPE_4__*,int ,int ,int ,int ,int *,int *,int *,int *,int *) ;
 int visibilitymap_count (TYPE_4__*,scalar_t__*,int *) ;

void
heap_vacuum_rel(Relation onerel, VacuumParams *params,
    BufferAccessStrategy bstrategy)
{
 LVRelStats *vacrelstats;
 Relation *Irel;
 int nindexes;
 PGRUsage ru0;
 TimestampTz starttime = 0;
 long secs;
 int usecs;
 double read_rate,
    write_rate;
 bool aggressive;
 bool scanned_all_unfrozen;
 TransactionId xidFullScanLimit;
 MultiXactId mxactFullScanLimit;
 BlockNumber new_rel_pages;
 BlockNumber new_rel_allvisible;
 double new_live_tuples;
 TransactionId new_frozen_xid;
 MultiXactId new_min_multi;

 Assert(params != ((void*)0));
 Assert(params->index_cleanup != VACOPT_TERNARY_DEFAULT);
 Assert(params->truncate != VACOPT_TERNARY_DEFAULT);


 Assert(TransactionIdIsNormal(onerel->rd_rel->relfrozenxid));
 Assert(MultiXactIdIsValid(onerel->rd_rel->relminmxid));


 if (IsAutoVacuumWorkerProcess() && params->log_min_duration >= 0)
 {
  pg_rusage_init(&ru0);
  starttime = GetCurrentTimestamp();
 }

 if (params->options & VACOPT_VERBOSE)
  elevel = INFO;
 else
  elevel = DEBUG2;

 pgstat_progress_start_command(PROGRESS_COMMAND_VACUUM,
          RelationGetRelid(onerel));

 vac_strategy = bstrategy;

 vacuum_set_xid_limits(onerel,
        params->freeze_min_age,
        params->freeze_table_age,
        params->multixact_freeze_min_age,
        params->multixact_freeze_table_age,
        &OldestXmin, &FreezeLimit, &xidFullScanLimit,
        &MultiXactCutoff, &mxactFullScanLimit);







 aggressive = TransactionIdPrecedesOrEquals(onerel->rd_rel->relfrozenxid,
              xidFullScanLimit);
 aggressive |= MultiXactIdPrecedesOrEquals(onerel->rd_rel->relminmxid,
             mxactFullScanLimit);
 if (params->options & VACOPT_DISABLE_PAGE_SKIPPING)
  aggressive = 1;







 if (params->is_wraparound && !aggressive)
 {
  ereport(DEBUG1,
    (errmsg("skipping redundant vacuum to prevent wraparound of table \"%s.%s.%s\"",
      get_database_name(MyDatabaseId),
      get_namespace_name(RelationGetNamespace(onerel)),
      RelationGetRelationName(onerel))));
  pgstat_progress_end_command();
  return;
 }

 vacrelstats = (LVRelStats *) palloc0(sizeof(LVRelStats));

 vacrelstats->old_rel_pages = onerel->rd_rel->relpages;
 vacrelstats->old_live_tuples = onerel->rd_rel->reltuples;
 vacrelstats->num_index_scans = 0;
 vacrelstats->pages_removed = 0;
 vacrelstats->lock_waiter_detected = 0;


 vac_open_indexes(onerel, RowExclusiveLock, &nindexes, &Irel);
 vacrelstats->useindex = (nindexes > 0 &&
        params->index_cleanup == VACOPT_TERNARY_ENABLED);


 lazy_scan_heap(onerel, params, vacrelstats, Irel, nindexes, aggressive);


 vac_close_indexes(nindexes, Irel, NoLock);
 if ((vacrelstats->scanned_pages + vacrelstats->frozenskipped_pages)
  < vacrelstats->rel_pages)
 {
  Assert(!aggressive);
  scanned_all_unfrozen = 0;
 }
 else
  scanned_all_unfrozen = 1;




 if (should_attempt_truncation(params, vacrelstats))
  lazy_truncate_heap(onerel, vacrelstats);


 pgstat_progress_update_param(PROGRESS_VACUUM_PHASE,
         PROGRESS_VACUUM_PHASE_FINAL_CLEANUP);
 new_rel_pages = vacrelstats->rel_pages;
 new_live_tuples = vacrelstats->new_live_tuples;
 if (vacrelstats->tupcount_pages == 0 && new_rel_pages > 0)
 {
  new_rel_pages = vacrelstats->old_rel_pages;
  new_live_tuples = vacrelstats->old_live_tuples;
 }

 visibilitymap_count(onerel, &new_rel_allvisible, ((void*)0));
 if (new_rel_allvisible > new_rel_pages)
  new_rel_allvisible = new_rel_pages;

 new_frozen_xid = scanned_all_unfrozen ? FreezeLimit : InvalidTransactionId;
 new_min_multi = scanned_all_unfrozen ? MultiXactCutoff : InvalidMultiXactId;

 vac_update_relstats(onerel,
      new_rel_pages,
      new_live_tuples,
      new_rel_allvisible,
      nindexes > 0,
      new_frozen_xid,
      new_min_multi,
      0);


 pgstat_report_vacuum(RelationGetRelid(onerel),
       onerel->rd_rel->relisshared,
       new_live_tuples,
       vacrelstats->new_dead_tuples);
 pgstat_progress_end_command();


 if (IsAutoVacuumWorkerProcess() && params->log_min_duration >= 0)
 {
  TimestampTz endtime = GetCurrentTimestamp();

  if (params->log_min_duration == 0 ||
   TimestampDifferenceExceeds(starttime, endtime,
            params->log_min_duration))
  {
   StringInfoData buf;
   char *msgfmt;

   TimestampDifference(starttime, endtime, &secs, &usecs);

   read_rate = 0;
   write_rate = 0;
   if ((secs > 0) || (usecs > 0))
   {
    read_rate = (double) BLCKSZ * VacuumPageMiss / (1024 * 1024) /
     (secs + usecs / 1000000.0);
    write_rate = (double) BLCKSZ * VacuumPageDirty / (1024 * 1024) /
     (secs + usecs / 1000000.0);
   }





   initStringInfo(&buf);
   if (params->is_wraparound)
   {

    Assert(aggressive);
    msgfmt = _("automatic aggressive vacuum to prevent wraparound of table \"%s.%s.%s\": index scans: %d\n");
   }
   else
   {
    if (aggressive)
     msgfmt = _("automatic aggressive vacuum of table \"%s.%s.%s\": index scans: %d\n");
    else
     msgfmt = _("automatic vacuum of table \"%s.%s.%s\": index scans: %d\n");
   }
   appendStringInfo(&buf, msgfmt,
        get_database_name(MyDatabaseId),
        get_namespace_name(RelationGetNamespace(onerel)),
        RelationGetRelationName(onerel),
        vacrelstats->num_index_scans);
   appendStringInfo(&buf, _("pages: %u removed, %u remain, %u skipped due to pins, %u skipped frozen\n"),
        vacrelstats->pages_removed,
        vacrelstats->rel_pages,
        vacrelstats->pinskipped_pages,
        vacrelstats->frozenskipped_pages);
   appendStringInfo(&buf,
        _("tuples: %.0f removed, %.0f remain, %.0f are dead but not yet removable, oldest xmin: %u\n"),
        vacrelstats->tuples_deleted,
        vacrelstats->new_rel_tuples,
        vacrelstats->new_dead_tuples,
        OldestXmin);
   appendStringInfo(&buf,
        _("buffer usage: %d hits, %d misses, %d dirtied\n"),
        VacuumPageHit,
        VacuumPageMiss,
        VacuumPageDirty);
   appendStringInfo(&buf, _("avg read rate: %.3f MB/s, avg write rate: %.3f MB/s\n"),
        read_rate, write_rate);
   appendStringInfo(&buf, _("system usage: %s"), pg_rusage_show(&ru0));

   ereport(LOG,
     (errmsg_internal("%s", buf.data)));
   pfree(buf.data);
  }
 }
}
