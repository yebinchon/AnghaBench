
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int offsetindex; unsigned int itemoff; unsigned int alignedlen; } ;
typedef TYPE_1__ itemIdSortData ;
typedef TYPE_1__* itemIdSort ;
struct TYPE_6__ {scalar_t__ pd_lower; scalar_t__ pd_upper; scalar_t__ pd_special; int pd_linp; } ;
typedef unsigned int Size ;
typedef TYPE_3__* PageHeader ;
typedef int Page ;
typedef int OffsetNumber ;
typedef scalar_t__ Offset ;
typedef int ItemIdData ;
typedef int * ItemId ;


 int Assert (int) ;
 scalar_t__ BLCKSZ ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int FirstOffsetNumber ;
 unsigned int ItemIdGetLength (int *) ;
 unsigned int ItemIdGetOffset (int *) ;
 int ItemIdHasStorage (int *) ;
 unsigned int MAXALIGN (unsigned int) ;
 int MaxIndexTuplesPerPage ;
 int OffsetNumberNext (int) ;
 int * PageGetItemId (int ,int) ;
 int PageGetMaxOffsetNumber (int ) ;
 int PageIndexTupleDelete (int ,int) ;
 scalar_t__ SizeOfPageHeaderData ;
 int compactify_tuples (TYPE_1__*,int,int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,unsigned int,scalar_t__,...) ;
 int memcpy (int ,int *,int) ;

void
PageIndexMultiDelete(Page page, OffsetNumber *itemnos, int nitems)
{
 PageHeader phdr = (PageHeader) page;
 Offset pd_lower = phdr->pd_lower;
 Offset pd_upper = phdr->pd_upper;
 Offset pd_special = phdr->pd_special;
 itemIdSortData itemidbase[MaxIndexTuplesPerPage];
 ItemIdData newitemids[MaxIndexTuplesPerPage];
 itemIdSort itemidptr;
 ItemId lp;
 int nline,
    nused;
 Size totallen;
 Size size;
 unsigned offset;
 int nextitm;
 OffsetNumber offnum;

 Assert(nitems <= MaxIndexTuplesPerPage);
 if (nitems <= 2)
 {
  while (--nitems >= 0)
   PageIndexTupleDelete(page, itemnos[nitems]);
  return;
 }




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
 totallen = 0;
 nused = 0;
 nextitm = 0;
 for (offnum = FirstOffsetNumber; offnum <= nline; offnum = OffsetNumberNext(offnum))
 {
  lp = PageGetItemId(page, offnum);
  Assert(ItemIdHasStorage(lp));
  size = ItemIdGetLength(lp);
  offset = ItemIdGetOffset(lp);
  if (offset < pd_upper ||
   (offset + size) > pd_special ||
   offset != MAXALIGN(offset))
   ereport(ERROR,
     (errcode(ERRCODE_DATA_CORRUPTED),
      errmsg("corrupted line pointer: offset = %u, size = %u",
       offset, (unsigned int) size)));

  if (nextitm < nitems && offnum == itemnos[nextitm])
  {

   nextitm++;
  }
  else
  {
   itemidptr->offsetindex = nused;
   itemidptr->itemoff = offset;
   itemidptr->alignedlen = MAXALIGN(size);
   totallen += itemidptr->alignedlen;
   newitemids[nused] = *lp;
   itemidptr++;
   nused++;
  }
 }


 if (nextitm != nitems)
  elog(ERROR, "incorrect index offsets supplied");

 if (totallen > (Size) (pd_special - pd_lower))
  ereport(ERROR,
    (errcode(ERRCODE_DATA_CORRUPTED),
     errmsg("corrupted item lengths: total %u, available space %u",
      (unsigned int) totallen, pd_special - pd_lower)));





 memcpy(phdr->pd_linp, newitemids, nused * sizeof(ItemIdData));
 phdr->pd_lower = SizeOfPageHeaderData + nused * sizeof(ItemIdData);


 compactify_tuples(itemidbase, nused, page);
}
