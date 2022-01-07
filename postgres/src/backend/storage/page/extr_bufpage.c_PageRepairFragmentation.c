
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int offsetindex; int itemoff; scalar_t__ alignedlen; } ;
typedef TYPE_1__ itemIdSortData ;
typedef TYPE_1__* itemIdSort ;
struct TYPE_6__ {scalar_t__ pd_lower; scalar_t__ pd_upper; scalar_t__ pd_special; } ;
typedef scalar_t__ Size ;
typedef TYPE_3__* PageHeader ;
typedef scalar_t__ Page ;
typedef scalar_t__ Offset ;
typedef int ItemId ;


 scalar_t__ BLCKSZ ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int FirstOffsetNumber ;
 scalar_t__ ItemIdGetLength (int ) ;
 int ItemIdGetOffset (int ) ;
 scalar_t__ ItemIdHasStorage (int ) ;
 scalar_t__ ItemIdIsUsed (int ) ;
 int ItemIdSetUnused (int ) ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 int MaxHeapTuplesPerPage ;
 int PageClearHasFreeLinePointers (scalar_t__) ;
 int PageGetItemId (scalar_t__,int) ;
 int PageGetMaxOffsetNumber (scalar_t__) ;
 int PageSetHasFreeLinePointers (scalar_t__) ;
 scalar_t__ SizeOfPageHeaderData ;
 int compactify_tuples (TYPE_1__*,int,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,unsigned int,...) ;
 scalar_t__ unlikely (int) ;

void
PageRepairFragmentation(Page page)
{
 Offset pd_lower = ((PageHeader) page)->pd_lower;
 Offset pd_upper = ((PageHeader) page)->pd_upper;
 Offset pd_special = ((PageHeader) page)->pd_special;
 itemIdSortData itemidbase[MaxHeapTuplesPerPage];
 itemIdSort itemidptr;
 ItemId lp;
 int nline,
    nstorage,
    nunused;
 int i;
 Size totallen;
 if (pd_lower < SizeOfPageHeaderData ||
  pd_lower > pd_upper ||
  pd_upper > pd_special ||
  pd_special > BLCKSZ ||
  pd_special != MAXALIGN(pd_special))
  ereport(ERROR,
    (errcode(ERRCODE_DATA_CORRUPTED),
     errmsg("corrupted page pointers: lower = %u, upper = %u, special = %u",
      pd_lower, pd_upper, pd_special)));




 nline = PageGetMaxOffsetNumber(page);
 itemidptr = itemidbase;
 nunused = totallen = 0;
 for (i = FirstOffsetNumber; i <= nline; i++)
 {
  lp = PageGetItemId(page, i);
  if (ItemIdIsUsed(lp))
  {
   if (ItemIdHasStorage(lp))
   {
    itemidptr->offsetindex = i - 1;
    itemidptr->itemoff = ItemIdGetOffset(lp);
    if (unlikely(itemidptr->itemoff < (int) pd_upper ||
        itemidptr->itemoff >= (int) pd_special))
     ereport(ERROR,
       (errcode(ERRCODE_DATA_CORRUPTED),
        errmsg("corrupted line pointer: %u",
         itemidptr->itemoff)));
    itemidptr->alignedlen = MAXALIGN(ItemIdGetLength(lp));
    totallen += itemidptr->alignedlen;
    itemidptr++;
   }
  }
  else
  {

   ItemIdSetUnused(lp);
   nunused++;
  }
 }

 nstorage = itemidptr - itemidbase;
 if (nstorage == 0)
 {

  ((PageHeader) page)->pd_upper = pd_special;
 }
 else
 {

  if (totallen > (Size) (pd_special - pd_lower))
   ereport(ERROR,
     (errcode(ERRCODE_DATA_CORRUPTED),
      errmsg("corrupted item lengths: total %u, available space %u",
       (unsigned int) totallen, pd_special - pd_lower)));

  compactify_tuples(itemidbase, nstorage, page);
 }


 if (nunused > 0)
  PageSetHasFreeLinePointers(page);
 else
  PageClearHasFreeLinePointers(page);
}
