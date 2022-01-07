
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_13__ {TYPE_1__* t_data; int t_self; int t_tableOid; int t_len; } ;
struct TYPE_12__ {int t_ctid; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int * ItemPointer ;
typedef int ItemId ;
typedef TYPE_1__* HeapTupleHeader ;
typedef TYPE_2__* HeapTuple ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int CheckForSerializableConflictOut (int,int ,TYPE_2__*,int ,int ) ;
 scalar_t__ FirstOffsetNumber ;
 int HeapTupleHeaderGetUpdateXid (TYPE_1__*) ;
 int HeapTupleHeaderGetXmin (TYPE_1__*) ;
 scalar_t__ HeapTupleIsHeapOnly (TYPE_2__*) ;
 scalar_t__ HeapTupleIsHotUpdated (TYPE_2__*) ;
 int HeapTupleIsSurelyDead (TYPE_2__*,int ) ;
 int HeapTupleSatisfiesVisibility (TYPE_2__*,int ,int ) ;
 int InvalidTransactionId ;
 int ItemIdGetLength (int ) ;
 scalar_t__ ItemIdGetRedirect (int ) ;
 int ItemIdIsNormal (int ) ;
 scalar_t__ ItemIdIsRedirected (int ) ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 int ItemPointerSet (int *,scalar_t__,scalar_t__) ;
 int ItemPointerSetOffsetNumber (int *,scalar_t__) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PredicateLockTuple (int ,TYPE_2__*,int ) ;
 int RecentGlobalXmin ;
 int RelationGetRelid (int ) ;
 int TransactionIdEquals (int ,int ) ;
 int TransactionIdIsValid (int ) ;

bool
heap_hot_search_buffer(ItemPointer tid, Relation relation, Buffer buffer,
        Snapshot snapshot, HeapTuple heapTuple,
        bool *all_dead, bool first_call)
{
 Page dp = (Page) BufferGetPage(buffer);
 TransactionId prev_xmax = InvalidTransactionId;
 BlockNumber blkno;
 OffsetNumber offnum;
 bool at_chain_start;
 bool valid;
 bool skip;


 if (all_dead)
  *all_dead = first_call;

 blkno = ItemPointerGetBlockNumber(tid);
 offnum = ItemPointerGetOffsetNumber(tid);
 at_chain_start = first_call;
 skip = !first_call;

 Assert(TransactionIdIsValid(RecentGlobalXmin));
 Assert(BufferGetBlockNumber(buffer) == blkno);


 for (;;)
 {
  ItemId lp;


  if (offnum < FirstOffsetNumber || offnum > PageGetMaxOffsetNumber(dp))
   break;

  lp = PageGetItemId(dp, offnum);


  if (!ItemIdIsNormal(lp))
  {

   if (ItemIdIsRedirected(lp) && at_chain_start)
   {

    offnum = ItemIdGetRedirect(lp);
    at_chain_start = 0;
    continue;
   }

   break;
  }







  heapTuple->t_data = (HeapTupleHeader) PageGetItem(dp, lp);
  heapTuple->t_len = ItemIdGetLength(lp);
  heapTuple->t_tableOid = RelationGetRelid(relation);
  ItemPointerSet(&heapTuple->t_self, blkno, offnum);




  if (at_chain_start && HeapTupleIsHeapOnly(heapTuple))
   break;





  if (TransactionIdIsValid(prev_xmax) &&
   !TransactionIdEquals(prev_xmax,
         HeapTupleHeaderGetXmin(heapTuple->t_data)))
   break;
  if (!skip)
  {

   valid = HeapTupleSatisfiesVisibility(heapTuple, snapshot, buffer);
   CheckForSerializableConflictOut(valid, relation, heapTuple,
           buffer, snapshot);

   if (valid)
   {
    ItemPointerSetOffsetNumber(tid, offnum);
    PredicateLockTuple(relation, heapTuple, snapshot);
    if (all_dead)
     *all_dead = 0;
    return 1;
   }
  }
  skip = 0;
  if (all_dead && *all_dead &&
   !HeapTupleIsSurelyDead(heapTuple, RecentGlobalXmin))
   *all_dead = 0;





  if (HeapTupleIsHotUpdated(heapTuple))
  {
   Assert(ItemPointerGetBlockNumber(&heapTuple->t_data->t_ctid) ==
       blkno);
   offnum = ItemPointerGetOffsetNumber(&heapTuple->t_data->t_ctid);
   at_chain_start = 0;
   prev_xmax = HeapTupleHeaderGetUpdateXid(heapTuple->t_data);
  }
  else
   break;
 }

 return 0;
}
