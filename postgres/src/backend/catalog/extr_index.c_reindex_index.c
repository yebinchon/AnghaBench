
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_31__ {int indisvalid; int indisready; int indislive; int indcheckxmin; } ;
struct TYPE_30__ {int t_self; } ;
struct TYPE_29__ {int ii_Unique; int ii_BrokenHotChain; int * ii_ExclusionStrats; int * ii_ExclusionProcs; int * ii_ExclusionOps; } ;
struct TYPE_28__ {TYPE_1__* rd_rel; } ;
struct TYPE_27__ {scalar_t__ relkind; int relam; } ;
typedef TYPE_2__* Relation ;
typedef int PGRUsage ;
typedef int Oid ;
typedef TYPE_3__ IndexInfo ;
typedef TYPE_4__* HeapTuple ;
typedef TYPE_5__* Form_pg_index ;


 int AccessExclusiveLock ;
 TYPE_3__* BuildIndexInfo (TYPE_2__*) ;
 int CacheInvalidateRelcache (TYPE_2__*) ;
 int CatalogTupleUpdate (TYPE_2__*,int *,TYPE_4__*) ;
 int CheckTableNotInUse (TYPE_2__*,char*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int EarlyPruningEnabled (TYPE_2__*) ;
 scalar_t__ GETSTRUCT (TYPE_4__*) ;
 int HeapTupleIsValid (TYPE_4__*) ;
 int INDEXRELID ;
 int INFO ;
 int IndexGetRelation (int ,int) ;
 int IndexRelationId ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 int PROGRESS_COMMAND_CREATE_INDEX ;
 int PROGRESS_CREATEIDX_ACCESS_METHOD_OID ;
 int PROGRESS_CREATEIDX_COMMAND ;
 int PROGRESS_CREATEIDX_COMMAND_REINDEX ;
 int PROGRESS_CREATEIDX_INDEX_OID ;
 int REINDEXOPT_REPORT_PROGRESS ;
 int REINDEXOPT_VERBOSE ;
 scalar_t__ RELATION_IS_OTHER_TEMP (TYPE_2__*) ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationSetNewRelfilenode (TYPE_2__*,char) ;
 int ResetReindexProcessing () ;
 int RowExclusiveLock ;
 TYPE_4__* SearchSysCacheCopy1 (int ,int ) ;
 int SetReindexProcessing (int ,int ) ;
 int ShareLock ;
 int TransferPredicateLocksToHeapRelation (TYPE_2__*) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_internal (char*,int ) ;
 int errmsg (char*,...) ;
 int get_rel_name (int ) ;
 int index_build (TYPE_2__*,TYPE_2__*,TYPE_3__*,int,int) ;
 int index_close (TYPE_2__*,int ) ;
 TYPE_2__* index_open (int ,int ) ;
 int pg_rusage_init (int *) ;
 int pg_rusage_show (int *) ;
 int pgstat_progress_end_command () ;
 int pgstat_progress_start_command (int ,int ) ;
 int pgstat_progress_update_param (int ,int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

void
reindex_index(Oid indexId, bool skip_constraint_checks, char persistence,
     int options)
{
 Relation iRel,
    heapRelation;
 Oid heapId;
 IndexInfo *indexInfo;
 volatile bool skipped_constraint = 0;
 PGRUsage ru0;
 bool progress = (options & REINDEXOPT_REPORT_PROGRESS) != 0;

 pg_rusage_init(&ru0);





 heapId = IndexGetRelation(indexId, 0);
 heapRelation = table_open(heapId, ShareLock);

 if (progress)
 {
  pgstat_progress_start_command(PROGRESS_COMMAND_CREATE_INDEX,
           heapId);
  pgstat_progress_update_param(PROGRESS_CREATEIDX_COMMAND,
          PROGRESS_CREATEIDX_COMMAND_REINDEX);
  pgstat_progress_update_param(PROGRESS_CREATEIDX_INDEX_OID,
          indexId);
 }





 iRel = index_open(indexId, AccessExclusiveLock);

 if (progress)
  pgstat_progress_update_param(PROGRESS_CREATEIDX_ACCESS_METHOD_OID,
          iRel->rd_rel->relam);





 if (iRel->rd_rel->relkind == RELKIND_PARTITIONED_INDEX)
  elog(ERROR, "unsupported relation kind for index \"%s\"",
    RelationGetRelationName(iRel));





 if (RELATION_IS_OTHER_TEMP(iRel))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot reindex temporary tables of other sessions")));





 CheckTableNotInUse(iRel, "REINDEX INDEX");





 TransferPredicateLocksToHeapRelation(iRel);


 indexInfo = BuildIndexInfo(iRel);


 if (skip_constraint_checks)
 {
  if (indexInfo->ii_Unique || indexInfo->ii_ExclusionOps != ((void*)0))
   skipped_constraint = 1;
  indexInfo->ii_Unique = 0;
  indexInfo->ii_ExclusionOps = ((void*)0);
  indexInfo->ii_ExclusionProcs = ((void*)0);
  indexInfo->ii_ExclusionStrats = ((void*)0);
 }


 PG_TRY();
 {

  SetReindexProcessing(heapId, indexId);


  RelationSetNewRelfilenode(iRel, persistence);



  index_build(heapRelation, iRel, indexInfo, 1, 1);
 }
 PG_FINALLY();
 {

  ResetReindexProcessing();
 }
 PG_END_TRY();
 if (!skipped_constraint)
 {
  Relation pg_index;
  HeapTuple indexTuple;
  Form_pg_index indexForm;
  bool index_bad;
  bool early_pruning_enabled = EarlyPruningEnabled(heapRelation);

  pg_index = table_open(IndexRelationId, RowExclusiveLock);

  indexTuple = SearchSysCacheCopy1(INDEXRELID,
           ObjectIdGetDatum(indexId));
  if (!HeapTupleIsValid(indexTuple))
   elog(ERROR, "cache lookup failed for index %u", indexId);
  indexForm = (Form_pg_index) GETSTRUCT(indexTuple);

  index_bad = (!indexForm->indisvalid ||
      !indexForm->indisready ||
      !indexForm->indislive);
  if (index_bad ||
   (indexForm->indcheckxmin && !indexInfo->ii_BrokenHotChain) ||
   early_pruning_enabled)
  {
   if (!indexInfo->ii_BrokenHotChain && !early_pruning_enabled)
    indexForm->indcheckxmin = 0;
   else if (index_bad || early_pruning_enabled)
    indexForm->indcheckxmin = 1;
   indexForm->indisvalid = 1;
   indexForm->indisready = 1;
   indexForm->indislive = 1;
   CatalogTupleUpdate(pg_index, &indexTuple->t_self, indexTuple);
   CacheInvalidateRelcache(heapRelation);
  }

  table_close(pg_index, RowExclusiveLock);
 }


 if (options & REINDEXOPT_VERBOSE)
  ereport(INFO,
    (errmsg("index \"%s\" was reindexed",
      get_rel_name(indexId)),
     errdetail_internal("%s",
         pg_rusage_show(&ru0))));

 if (progress)
  pgstat_progress_end_command();


 index_close(iRel, NoLock);
 table_close(heapRelation, NoLock);
}
