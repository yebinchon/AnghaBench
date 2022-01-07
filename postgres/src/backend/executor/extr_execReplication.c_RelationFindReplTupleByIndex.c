
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int tts_tid; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef int TransactionId ;
struct TYPE_15__ {int xmax; int xmin; } ;
struct TYPE_14__ {int ctid; } ;
typedef int TM_Result ;
typedef TYPE_2__ TM_FailureData ;
typedef TYPE_3__ SnapshotData ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int LockTupleMode ;
typedef int IndexScanDesc ;


 int ERRCODE_T_R_SERIALIZATION_FAILURE ;
 int ERROR ;
 int ExecMaterializeSlot (TYPE_1__*) ;
 int ForwardScanDirection ;
 int GetCurrentCommandId (int) ;
 int GetLatestSnapshot () ;
 int INDEX_MAX_KEYS ;
 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 int InitDirtySnapshot (TYPE_3__) ;
 int ItemPointerIndicatesMovedPartitions (int *) ;
 int LOG ;
 int LockWaitBlock ;
 int NoLock ;
 int PopActiveSnapshot () ;
 int PushActiveSnapshot (int ) ;
 int RowExclusiveLock ;




 scalar_t__ TransactionIdIsValid (int ) ;
 int XLTW_None ;
 int XactLockTableWait (int ,int *,int *,int ) ;
 int build_replindex_scan_key (int *,int ,int ,TYPE_1__*) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int index_beginscan (int ,int ,TYPE_3__*,int ,int ) ;
 int index_close (int ,int ) ;
 int index_endscan (int ) ;
 scalar_t__ index_getnext_slot (int ,int ,TYPE_1__*) ;
 int index_open (int ,int ) ;
 int index_rescan (int ,int *,int ,int *,int ) ;
 int table_tuple_lock (int ,int *,int ,TYPE_1__*,int ,int ,int ,int ,TYPE_2__*) ;

bool
RelationFindReplTupleByIndex(Relation rel, Oid idxoid,
        LockTupleMode lockmode,
        TupleTableSlot *searchslot,
        TupleTableSlot *outslot)
{
 ScanKeyData skey[INDEX_MAX_KEYS];
 IndexScanDesc scan;
 SnapshotData snap;
 TransactionId xwait;
 Relation idxrel;
 bool found;


 idxrel = index_open(idxoid, RowExclusiveLock);


 InitDirtySnapshot(snap);
 scan = index_beginscan(rel, idxrel, &snap,
         IndexRelationGetNumberOfKeyAttributes(idxrel),
         0);


 build_replindex_scan_key(skey, rel, idxrel, searchslot);

retry:
 found = 0;

 index_rescan(scan, skey, IndexRelationGetNumberOfKeyAttributes(idxrel), ((void*)0), 0);


 if (index_getnext_slot(scan, ForwardScanDirection, outslot))
 {
  found = 1;
  ExecMaterializeSlot(outslot);

  xwait = TransactionIdIsValid(snap.xmin) ?
   snap.xmin : snap.xmax;





  if (TransactionIdIsValid(xwait))
  {
   XactLockTableWait(xwait, ((void*)0), ((void*)0), XLTW_None);
   goto retry;
  }
 }


 if (found)
 {
  TM_FailureData tmfd;
  TM_Result res;

  PushActiveSnapshot(GetLatestSnapshot());

  res = table_tuple_lock(rel, &(outslot->tts_tid), GetLatestSnapshot(),
          outslot,
          GetCurrentCommandId(0),
          lockmode,
          LockWaitBlock,
          0 ,
          &tmfd);

  PopActiveSnapshot();

  switch (res)
  {
   case 129:
    break;
   case 128:

    if (ItemPointerIndicatesMovedPartitions(&tmfd.ctid))
     ereport(LOG,
       (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
        errmsg("tuple to be locked was already moved to another partition due to concurrent update, retrying")));
    else
     ereport(LOG,
       (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
        errmsg("concurrent update, retrying")));
    goto retry;
   case 131:

    ereport(LOG,
      (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
       errmsg("concurrent delete, retrying")));
    goto retry;
   case 130:
    elog(ERROR, "attempted to lock invisible tuple");
    break;
   default:
    elog(ERROR, "unexpected table_tuple_lock status: %u", res);
    break;
  }
 }

 index_endscan(scan);


 index_close(idxrel, NoLock);

 return found;
}
