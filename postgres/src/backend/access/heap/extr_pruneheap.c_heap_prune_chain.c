
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_18__ {int t_self; void* t_len; TYPE_2__* t_data; int t_tableOid; } ;
struct TYPE_17__ {int t_ctid; } ;
struct TYPE_16__ {int latestRemovedXid; scalar_t__* marked; } ;
typedef int Relation ;
typedef TYPE_1__ PruneState ;
typedef int Page ;
typedef size_t OffsetNumber ;
typedef int ItemId ;
typedef TYPE_2__* HeapTupleHeader ;
typedef TYPE_3__ HeapTupleData ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int ERROR ;
 size_t FirstOffsetNumber ;





 int HeapTupleHeaderAdvanceLatestRemovedXid (TYPE_2__*,int *) ;
 int HeapTupleHeaderGetUpdateXid (TYPE_2__*) ;
 int HeapTupleHeaderGetXmin (TYPE_2__*) ;
 int HeapTupleHeaderIndicatesMovedPartitions (TYPE_2__*) ;
 scalar_t__ HeapTupleHeaderIsHeapOnly (TYPE_2__*) ;
 int HeapTupleHeaderIsHotUpdated (TYPE_2__*) ;
 int HeapTupleSatisfiesVacuum (TYPE_3__*,int ,int ) ;
 size_t InvalidOffsetNumber ;
 int InvalidTransactionId ;
 void* ItemIdGetLength (int ) ;
 size_t ItemIdGetRedirect (int ) ;
 scalar_t__ ItemIdIsDead (int ) ;
 int ItemIdIsNormal (int ) ;
 scalar_t__ ItemIdIsRedirected (int ) ;
 int ItemIdIsUsed (int ) ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 size_t ItemPointerGetOffsetNumber (int *) ;
 int ItemPointerSet (int *,scalar_t__,size_t) ;
 int MaxHeapTuplesPerPage ;
 scalar_t__ OffsetNumberIsValid (size_t) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,size_t) ;
 size_t PageGetMaxOffsetNumber (int ) ;
 int RelationGetRelid (int ) ;
 int TransactionIdEquals (int ,int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 int elog (int ,char*) ;
 int heap_prune_record_dead (TYPE_1__*,size_t) ;
 int heap_prune_record_prunable (TYPE_1__*,int ) ;
 int heap_prune_record_redirect (TYPE_1__*,size_t,size_t) ;
 int heap_prune_record_unused (TYPE_1__*,size_t) ;

__attribute__((used)) static int
heap_prune_chain(Relation relation, Buffer buffer, OffsetNumber rootoffnum,
     TransactionId OldestXmin,
     PruneState *prstate)
{
 int ndeleted = 0;
 Page dp = (Page) BufferGetPage(buffer);
 TransactionId priorXmax = InvalidTransactionId;
 ItemId rootlp;
 HeapTupleHeader htup;
 OffsetNumber latestdead = InvalidOffsetNumber,
    maxoff = PageGetMaxOffsetNumber(dp),
    offnum;
 OffsetNumber chainitems[MaxHeapTuplesPerPage];
 int nchain = 0,
    i;
 HeapTupleData tup;

 tup.t_tableOid = RelationGetRelid(relation);

 rootlp = PageGetItemId(dp, rootoffnum);




 if (ItemIdIsNormal(rootlp))
 {
  htup = (HeapTupleHeader) PageGetItem(dp, rootlp);

  tup.t_data = htup;
  tup.t_len = ItemIdGetLength(rootlp);
  ItemPointerSet(&(tup.t_self), BufferGetBlockNumber(buffer), rootoffnum);

  if (HeapTupleHeaderIsHeapOnly(htup))
  {
   if (HeapTupleSatisfiesVacuum(&tup, OldestXmin, buffer)
    == 132 && !HeapTupleHeaderIsHotUpdated(htup))
   {
    heap_prune_record_unused(prstate, rootoffnum);
    HeapTupleHeaderAdvanceLatestRemovedXid(htup,
                &prstate->latestRemovedXid);
    ndeleted++;
   }


   return ndeleted;
  }
 }


 offnum = rootoffnum;


 for (;;)
 {
  ItemId lp;
  bool tupdead,
     recent_dead;


  if (offnum < FirstOffsetNumber || offnum > maxoff)
   break;


  if (prstate->marked[offnum])
   break;

  lp = PageGetItemId(dp, offnum);


  if (!ItemIdIsUsed(lp))
   break;






  if (ItemIdIsRedirected(lp))
  {
   if (nchain > 0)
    break;
   chainitems[nchain++] = offnum;
   offnum = ItemIdGetRedirect(rootlp);
   continue;
  }






  if (ItemIdIsDead(lp))
   break;

  Assert(ItemIdIsNormal(lp));
  htup = (HeapTupleHeader) PageGetItem(dp, lp);

  tup.t_data = htup;
  tup.t_len = ItemIdGetLength(lp);
  ItemPointerSet(&(tup.t_self), BufferGetBlockNumber(buffer), offnum);




  if (TransactionIdIsValid(priorXmax) &&
   !TransactionIdEquals(HeapTupleHeaderGetXmin(htup), priorXmax))
   break;




  chainitems[nchain++] = offnum;




  tupdead = recent_dead = 0;

  switch (HeapTupleSatisfiesVacuum(&tup, OldestXmin, buffer))
  {
   case 132:
    tupdead = 1;
    break;

   case 128:
    recent_dead = 1;





    heap_prune_record_prunable(prstate,
             HeapTupleHeaderGetUpdateXid(htup));
    break;

   case 131:





    heap_prune_record_prunable(prstate,
             HeapTupleHeaderGetUpdateXid(htup));
    break;

   case 129:
   case 130:







    break;

   default:
    elog(ERROR, "unexpected HeapTupleSatisfiesVacuum result");
    break;
  }
  if (tupdead)
  {
   latestdead = offnum;
   HeapTupleHeaderAdvanceLatestRemovedXid(htup,
               &prstate->latestRemovedXid);
  }
  else if (!recent_dead)
   break;





  if (!HeapTupleHeaderIsHotUpdated(htup))
   break;


  Assert(!HeapTupleHeaderIndicatesMovedPartitions(htup));




  Assert(ItemPointerGetBlockNumber(&htup->t_ctid) ==
      BufferGetBlockNumber(buffer));
  offnum = ItemPointerGetOffsetNumber(&htup->t_ctid);
  priorXmax = HeapTupleHeaderGetUpdateXid(htup);
 }






 if (OffsetNumberIsValid(latestdead))
 {







  for (i = 1; (i < nchain) && (chainitems[i - 1] != latestdead); i++)
  {
   heap_prune_record_unused(prstate, chainitems[i]);
   ndeleted++;
  }






  if (ItemIdIsNormal(rootlp))
   ndeleted++;






  if (i >= nchain)
   heap_prune_record_dead(prstate, rootoffnum);
  else
   heap_prune_record_redirect(prstate, rootoffnum, chainitems[i]);
 }
 else if (nchain < 2 && ItemIdIsRedirected(rootlp))
 {







  heap_prune_record_dead(prstate, rootoffnum);
 }

 return ndeleted;
}
