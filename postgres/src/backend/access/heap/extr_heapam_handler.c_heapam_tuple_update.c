
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int tts_tid; int tts_tableOid; } ;
typedef TYPE_1__ TupleTableSlot ;
struct TYPE_10__ {int t_self; int t_tableOid; } ;
typedef scalar_t__ TM_Result ;
typedef int TM_FailureData ;
typedef int Snapshot ;
typedef int Relation ;
typedef int LockTupleMode ;
typedef int ItemPointer ;
typedef TYPE_2__* HeapTuple ;
typedef int CommandId ;


 TYPE_2__* ExecFetchSlotHeapTuple (TYPE_1__*,int,int*) ;
 int HeapTupleIsHeapOnly (TYPE_2__*) ;
 int ItemPointerCopy (int *,int *) ;
 int RelationGetRelid (int ) ;
 scalar_t__ TM_Ok ;
 scalar_t__ heap_update (int ,int ,TYPE_2__*,int ,int ,int,int *,int *) ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static TM_Result
heapam_tuple_update(Relation relation, ItemPointer otid, TupleTableSlot *slot,
     CommandId cid, Snapshot snapshot, Snapshot crosscheck,
     bool wait, TM_FailureData *tmfd,
     LockTupleMode *lockmode, bool *update_indexes)
{
 bool shouldFree = 1;
 HeapTuple tuple = ExecFetchSlotHeapTuple(slot, 1, &shouldFree);
 TM_Result result;


 slot->tts_tableOid = RelationGetRelid(relation);
 tuple->t_tableOid = slot->tts_tableOid;

 result = heap_update(relation, otid, tuple, cid, crosscheck, wait,
       tmfd, lockmode);
 ItemPointerCopy(&tuple->t_self, &slot->tts_tid);
 *update_indexes = result == TM_Ok && !HeapTupleIsHeapOnly(tuple);

 if (shouldFree)
  pfree(tuple);

 return result;
}
