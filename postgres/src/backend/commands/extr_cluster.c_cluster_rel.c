
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int indisclustered; } ;
struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {scalar_t__ relkind; scalar_t__ relisshared; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_index ;


 int AccessExclusiveLock ;
 int CHECK_FOR_INTERRUPTS () ;
 int CLUOPT_RECHECK ;
 int CLUOPT_VERBOSE ;
 int CheckTableNotInUse (TYPE_2__*,char*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetUserId () ;
 int HeapTupleIsValid (int ) ;
 int INDEXRELID ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int PROGRESS_CLUSTER_COMMAND ;
 int PROGRESS_CLUSTER_COMMAND_CLUSTER ;
 int PROGRESS_CLUSTER_COMMAND_VACUUM_FULL ;
 int PROGRESS_COMMAND_CLUSTER ;
 scalar_t__ RELATION_IS_OTHER_TEMP (TYPE_2__*) ;
 scalar_t__ RELKIND_MATVIEW ;
 int RELOID ;
 int RelationIsPopulated (TYPE_2__*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SearchSysCacheExists1 (int ,int ) ;
 int TransferPredicateLocksToHeapRelation (TYPE_2__*) ;
 int check_index_is_clusterable (TYPE_2__*,int ,int,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pg_class_ownercheck (int ,int ) ;
 int pgstat_progress_end_command () ;
 int pgstat_progress_start_command (int ,int ) ;
 int pgstat_progress_update_param (int ,int ) ;
 int rebuild_relation (TYPE_2__*,int ,int) ;
 int relation_close (TYPE_2__*,int ) ;
 TYPE_2__* try_relation_open (int ,int ) ;

void
cluster_rel(Oid tableOid, Oid indexOid, int options)
{
 Relation OldHeap;
 bool verbose = ((options & CLUOPT_VERBOSE) != 0);
 bool recheck = ((options & CLUOPT_RECHECK) != 0);


 CHECK_FOR_INTERRUPTS();

 pgstat_progress_start_command(PROGRESS_COMMAND_CLUSTER, tableOid);
 if (OidIsValid(indexOid))
  pgstat_progress_update_param(PROGRESS_CLUSTER_COMMAND,
          PROGRESS_CLUSTER_COMMAND_CLUSTER);
 else
  pgstat_progress_update_param(PROGRESS_CLUSTER_COMMAND,
          PROGRESS_CLUSTER_COMMAND_VACUUM_FULL);







 OldHeap = try_relation_open(tableOid, AccessExclusiveLock);


 if (!OldHeap)
 {
  pgstat_progress_end_command();
  return;
 }
 if (recheck)
 {
  HeapTuple tuple;
  Form_pg_index indexForm;


  if (!pg_class_ownercheck(tableOid, GetUserId()))
  {
   relation_close(OldHeap, AccessExclusiveLock);
   pgstat_progress_end_command();
   return;
  }
  if (RELATION_IS_OTHER_TEMP(OldHeap))
  {
   relation_close(OldHeap, AccessExclusiveLock);
   pgstat_progress_end_command();
   return;
  }

  if (OidIsValid(indexOid))
  {



   if (!SearchSysCacheExists1(RELOID, ObjectIdGetDatum(indexOid)))
   {
    relation_close(OldHeap, AccessExclusiveLock);
    pgstat_progress_end_command();
    return;
   }




   tuple = SearchSysCache1(INDEXRELID, ObjectIdGetDatum(indexOid));
   if (!HeapTupleIsValid(tuple))
   {
    relation_close(OldHeap, AccessExclusiveLock);
    pgstat_progress_end_command();
    return;
   }
   indexForm = (Form_pg_index) GETSTRUCT(tuple);
   if (!indexForm->indisclustered)
   {
    ReleaseSysCache(tuple);
    relation_close(OldHeap, AccessExclusiveLock);
    pgstat_progress_end_command();
    return;
   }
   ReleaseSysCache(tuple);
  }
 }







 if (OidIsValid(indexOid) && OldHeap->rd_rel->relisshared)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot cluster a shared catalog")));





 if (RELATION_IS_OTHER_TEMP(OldHeap))
 {
  if (OidIsValid(indexOid))
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot cluster temporary tables of other sessions")));
  else
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot vacuum temporary tables of other sessions")));
 }





 CheckTableNotInUse(OldHeap, OidIsValid(indexOid) ? "CLUSTER" : "VACUUM");


 if (OidIsValid(indexOid))
  check_index_is_clusterable(OldHeap, indexOid, recheck, AccessExclusiveLock);
 if (OldHeap->rd_rel->relkind == RELKIND_MATVIEW &&
  !RelationIsPopulated(OldHeap))
 {
  relation_close(OldHeap, AccessExclusiveLock);
  pgstat_progress_end_command();
  return;
 }







 TransferPredicateLocksToHeapRelation(OldHeap);


 rebuild_relation(OldHeap, indexOid, verbose);



 pgstat_progress_end_command();
}
