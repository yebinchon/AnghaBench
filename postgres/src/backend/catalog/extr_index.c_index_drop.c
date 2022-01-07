
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_26__ {int t_self; } ;
struct TYPE_25__ {int relId; int dbId; } ;
struct TYPE_22__ {TYPE_4__ lockRelId; } ;
struct TYPE_24__ {TYPE_2__* rd_rel; TYPE_1__ rd_lockInfo; } ;
struct TYPE_23__ {scalar_t__ relkind; } ;
typedef TYPE_3__* Relation ;
typedef int Oid ;
typedef TYPE_4__ LockRelId ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;
typedef TYPE_5__* HeapTuple ;


 int AccessExclusiveLock ;
 int Anum_pg_index_indexprs ;
 int CacheInvalidateRelcache (TYPE_3__*) ;
 int CatalogTupleDelete (TYPE_3__*,int *) ;
 int CheckTableNotInUse (TYPE_3__*,char*) ;
 int CommitTransactionCommand () ;
 int DeleteAttributeTuples (int ) ;
 int DeleteInheritsTuple (int ,int ) ;
 int DeleteRelationTuple (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ GetTopTransactionIdIfAny () ;
 int HeapTupleIsValid (TYPE_5__*) ;
 int INDEXRELID ;
 int INDEX_DROP_CLEAR_VALID ;
 int IndexGetRelation (int ,int) ;
 int IndexRelationId ;
 int InvalidOid ;
 scalar_t__ InvalidTransactionId ;
 int LockRelationIdForSession (TYPE_4__*,int ) ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int PopActiveSnapshot () ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int RelationDropStorage (TYPE_3__*) ;
 int RelationForgetRelation (int ) ;
 int RelationGetDescr (TYPE_3__*) ;
 int ReleaseSysCache (TYPE_5__*) ;
 int RemoveStatistics (int ,int ) ;
 int RowExclusiveLock ;
 int SET_LOCKTAG_RELATION (int ,int ,int ) ;
 TYPE_5__* SearchSysCache1 (int ,int ) ;
 int ShareUpdateExclusiveLock ;
 int StartTransactionCommand () ;
 int TransferPredicateLocksToHeapRelation (TYPE_3__*) ;
 int UnlockRelationIdForSession (TYPE_4__*,int ) ;
 int WaitForLockers (int ,int ,int) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int heap_attisnull (TYPE_5__*,int ,int ) ;
 int index_close (TYPE_3__*,int ) ;
 int index_concurrently_set_dead (int ,int ) ;
 TYPE_3__* index_open (int ,int ) ;
 int index_set_state_flags (int ,int ) ;
 int table_close (TYPE_3__*,int ) ;
 TYPE_3__* table_open (int ,int ) ;

void
index_drop(Oid indexId, bool concurrent, bool concurrent_lock_mode)
{
 Oid heapId;
 Relation userHeapRelation;
 Relation userIndexRelation;
 Relation indexRelation;
 HeapTuple tuple;
 bool hasexprs;
 LockRelId heaprelid,
    indexrelid;
 LOCKTAG heaplocktag;
 LOCKMODE lockmode;
 heapId = IndexGetRelation(indexId, 0);
 lockmode = (concurrent || concurrent_lock_mode) ? ShareUpdateExclusiveLock : AccessExclusiveLock;
 userHeapRelation = table_open(heapId, lockmode);
 userIndexRelation = index_open(indexId, lockmode);





 CheckTableNotInUse(userIndexRelation, "DROP INDEX");
 if (concurrent)
 {
  if (GetTopTransactionIdIfAny() != InvalidTransactionId)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("DROP INDEX CONCURRENTLY must be first action in transaction")));




  index_set_state_flags(indexId, INDEX_DROP_CLEAR_VALID);






  CacheInvalidateRelcache(userHeapRelation);


  heaprelid = userHeapRelation->rd_lockInfo.lockRelId;
  SET_LOCKTAG_RELATION(heaplocktag, heaprelid.dbId, heaprelid.relId);
  indexrelid = userIndexRelation->rd_lockInfo.lockRelId;

  table_close(userHeapRelation, NoLock);
  index_close(userIndexRelation, NoLock);
  LockRelationIdForSession(&heaprelid, ShareUpdateExclusiveLock);
  LockRelationIdForSession(&indexrelid, ShareUpdateExclusiveLock);

  PopActiveSnapshot();
  CommitTransactionCommand();
  StartTransactionCommand();
  WaitForLockers(heaplocktag, AccessExclusiveLock, 1);


  index_concurrently_set_dead(heapId, indexId);





  CommitTransactionCommand();
  StartTransactionCommand();





  WaitForLockers(heaplocktag, AccessExclusiveLock, 1);
  userHeapRelation = table_open(heapId, ShareUpdateExclusiveLock);
  userIndexRelation = index_open(indexId, AccessExclusiveLock);
 }
 else
 {

  TransferPredicateLocksToHeapRelation(userIndexRelation);
 }




 if (userIndexRelation->rd_rel->relkind != RELKIND_PARTITIONED_INDEX)
  RelationDropStorage(userIndexRelation);






 index_close(userIndexRelation, NoLock);

 RelationForgetRelation(indexId);




 indexRelation = table_open(IndexRelationId, RowExclusiveLock);

 tuple = SearchSysCache1(INDEXRELID, ObjectIdGetDatum(indexId));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for index %u", indexId);

 hasexprs = !heap_attisnull(tuple, Anum_pg_index_indexprs,
          RelationGetDescr(indexRelation));

 CatalogTupleDelete(indexRelation, &tuple->t_self);

 ReleaseSysCache(tuple);
 table_close(indexRelation, RowExclusiveLock);





 if (hasexprs)
  RemoveStatistics(indexId, 0);




 DeleteAttributeTuples(indexId);




 DeleteRelationTuple(indexId);




 DeleteInheritsTuple(indexId, InvalidOid);
 CacheInvalidateRelcache(userHeapRelation);




 table_close(userHeapRelation, NoLock);




 if (concurrent)
 {
  UnlockRelationIdForSession(&heaprelid, ShareUpdateExclusiveLock);
  UnlockRelationIdForSession(&indexrelid, ShareUpdateExclusiveLock);
 }
}
