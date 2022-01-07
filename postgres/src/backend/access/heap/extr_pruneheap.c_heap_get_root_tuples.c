
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_7__ {int t_ctid; } ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef TYPE_1__* HeapTupleHeader ;


 int Assert (int) ;
 int FirstOffsetNumber ;
 int HeapTupleHeaderGetUpdateXid (TYPE_1__*) ;
 int HeapTupleHeaderGetXmin (TYPE_1__*) ;
 int HeapTupleHeaderIndicatesMovedPartitions (TYPE_1__*) ;
 scalar_t__ HeapTupleHeaderIsHeapOnly (TYPE_1__*) ;
 int HeapTupleHeaderIsHotUpdated (TYPE_1__*) ;
 int InvalidTransactionId ;
 int ItemIdGetRedirect (int ) ;
 scalar_t__ ItemIdIsDead (int ) ;
 scalar_t__ ItemIdIsNormal (int ) ;
 int ItemIdIsRedirected (int ) ;
 int ItemIdIsUsed (int ) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int MaxHeapTuplesPerPage ;
 int MemSet (int*,int ,int) ;
 int OffsetNumberNext (int) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int) ;
 int PageGetMaxOffsetNumber (int ) ;
 int TransactionIdEquals (int ,int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;

void
heap_get_root_tuples(Page page, OffsetNumber *root_offsets)
{
 OffsetNumber offnum,
    maxoff;

 MemSet(root_offsets, 0, MaxHeapTuplesPerPage * sizeof(OffsetNumber));

 maxoff = PageGetMaxOffsetNumber(page);
 for (offnum = FirstOffsetNumber; offnum <= maxoff; offnum = OffsetNumberNext(offnum))
 {
  ItemId lp = PageGetItemId(page, offnum);
  HeapTupleHeader htup;
  OffsetNumber nextoffnum;
  TransactionId priorXmax;


  if (!ItemIdIsUsed(lp) || ItemIdIsDead(lp))
   continue;

  if (ItemIdIsNormal(lp))
  {
   htup = (HeapTupleHeader) PageGetItem(page, lp);






   if (HeapTupleHeaderIsHeapOnly(htup))
    continue;





   root_offsets[offnum - 1] = offnum;


   if (!HeapTupleHeaderIsHotUpdated(htup))
    continue;


   nextoffnum = ItemPointerGetOffsetNumber(&htup->t_ctid);
   priorXmax = HeapTupleHeaderGetUpdateXid(htup);
  }
  else
  {

   Assert(ItemIdIsRedirected(lp));

   nextoffnum = ItemIdGetRedirect(lp);
   priorXmax = InvalidTransactionId;
  }
  for (;;)
  {
   lp = PageGetItemId(page, nextoffnum);


   if (!ItemIdIsNormal(lp))
    break;

   htup = (HeapTupleHeader) PageGetItem(page, lp);

   if (TransactionIdIsValid(priorXmax) &&
    !TransactionIdEquals(priorXmax, HeapTupleHeaderGetXmin(htup)))
    break;


   root_offsets[nextoffnum - 1] = offnum;


   if (!HeapTupleHeaderIsHotUpdated(htup))
    break;


   Assert(!HeapTupleHeaderIndicatesMovedPartitions(htup));

   nextoffnum = ItemPointerGetOffsetNumber(&htup->t_ctid);
   priorXmax = HeapTupleHeaderGetUpdateXid(htup);
  }
 }
}
