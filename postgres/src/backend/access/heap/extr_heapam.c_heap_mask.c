
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int t_cid; } ;
struct TYPE_8__ {TYPE_1__ t_field3; } ;
struct TYPE_9__ {TYPE_2__ t_heap; } ;
struct TYPE_10__ {int t_ctid; TYPE_3__ t_choice; int t_infomask; } ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef TYPE_4__* HeapTupleHeader ;
typedef int BlockNumber ;


 int HEAP_XACT_MASK ;
 int HEAP_XMAX_COMMITTED ;
 int HEAP_XMAX_INVALID ;
 scalar_t__ HeapTupleHeaderIsSpeculative (TYPE_4__*) ;
 int HeapTupleHeaderXminFrozen (TYPE_4__*) ;
 int ItemIdGetLength (int ) ;
 scalar_t__ ItemIdGetOffset (int ) ;
 scalar_t__ ItemIdHasStorage (int ) ;
 scalar_t__ ItemIdIsNormal (int ) ;
 int ItemPointerSet (int *,int ,int) ;
 int MASK_MARKER ;
 int MAXALIGN (int) ;
 int PageGetItemId (scalar_t__,int) ;
 int PageGetMaxOffsetNumber (scalar_t__) ;
 int mask_page_hint_bits (scalar_t__) ;
 int mask_page_lsn_and_checksum (scalar_t__) ;
 int mask_unused_space (scalar_t__) ;
 int memset (char*,int ,int) ;

void
heap_mask(char *pagedata, BlockNumber blkno)
{
 Page page = (Page) pagedata;
 OffsetNumber off;

 mask_page_lsn_and_checksum(page);

 mask_page_hint_bits(page);
 mask_unused_space(page);

 for (off = 1; off <= PageGetMaxOffsetNumber(page); off++)
 {
  ItemId iid = PageGetItemId(page, off);
  char *page_item;

  page_item = (char *) (page + ItemIdGetOffset(iid));

  if (ItemIdIsNormal(iid))
  {
   HeapTupleHeader page_htup = (HeapTupleHeader) page_item;






   if (!HeapTupleHeaderXminFrozen(page_htup))
    page_htup->t_infomask &= ~HEAP_XACT_MASK;
   else
   {

    page_htup->t_infomask &= ~HEAP_XMAX_INVALID;
    page_htup->t_infomask &= ~HEAP_XMAX_COMMITTED;
   }





   page_htup->t_choice.t_heap.t_field3.t_cid = MASK_MARKER;
   if (HeapTupleHeaderIsSpeculative(page_htup))
    ItemPointerSet(&page_htup->t_ctid, blkno, off);







  }





  if (ItemIdHasStorage(iid))
  {
   int len = ItemIdGetLength(iid);
   int padlen = MAXALIGN(len) - len;

   if (padlen > 0)
    memset(page_item + len, MASK_MARKER, padlen);
  }
 }
}
