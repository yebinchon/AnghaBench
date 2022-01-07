
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int t_tableOid; int t_len; int * t_data; int t_self; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int * ItemPointer ;
typedef int ItemId ;
typedef int * HeapTupleHeader ;
typedef TYPE_1__* HeapTuple ;
typedef int Buffer ;


 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int CheckForSerializableConflictOut (int,int ,TYPE_1__*,int ,int ) ;
 scalar_t__ FirstOffsetNumber ;
 int HeapTupleSatisfiesVisibility (TYPE_1__*,int ,int ) ;
 int InvalidBuffer ;
 int ItemIdGetLength (int ) ;
 int ItemIdIsNormal (int ) ;
 int ItemPointerGetBlockNumber (int *) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PredicateLockTuple (int ,TYPE_1__*,int ) ;
 int ReadBuffer (int ,int ) ;
 int RelationGetRelid (int ) ;
 int ReleaseBuffer (int ) ;
 int TestForOldSnapshot (int ,int ,int ) ;

bool
heap_fetch(Relation relation,
     Snapshot snapshot,
     HeapTuple tuple,
     Buffer *userbuf)
{
 ItemPointer tid = &(tuple->t_self);
 ItemId lp;
 Buffer buffer;
 Page page;
 OffsetNumber offnum;
 bool valid;




 buffer = ReadBuffer(relation, ItemPointerGetBlockNumber(tid));




 LockBuffer(buffer, BUFFER_LOCK_SHARE);
 page = BufferGetPage(buffer);
 TestForOldSnapshot(snapshot, relation, page);





 offnum = ItemPointerGetOffsetNumber(tid);
 if (offnum < FirstOffsetNumber || offnum > PageGetMaxOffsetNumber(page))
 {
  LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
  ReleaseBuffer(buffer);
  *userbuf = InvalidBuffer;
  tuple->t_data = ((void*)0);
  return 0;
 }




 lp = PageGetItemId(page, offnum);




 if (!ItemIdIsNormal(lp))
 {
  LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
  ReleaseBuffer(buffer);
  *userbuf = InvalidBuffer;
  tuple->t_data = ((void*)0);
  return 0;
 }




 tuple->t_data = (HeapTupleHeader) PageGetItem(page, lp);
 tuple->t_len = ItemIdGetLength(lp);
 tuple->t_tableOid = RelationGetRelid(relation);




 valid = HeapTupleSatisfiesVisibility(tuple, snapshot, buffer);

 if (valid)
  PredicateLockTuple(relation, tuple, snapshot);

 CheckForSerializableConflictOut(valid, relation, tuple, buffer, snapshot);

 LockBuffer(buffer, BUFFER_LOCK_UNLOCK);

 if (valid)
 {




  *userbuf = buffer;

  return 1;
 }


 ReleaseBuffer(buffer);
 *userbuf = InvalidBuffer;

 return 0;
}
