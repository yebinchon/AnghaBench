
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int first; } ;
typedef scalar_t__ Size ;
typedef scalar_t__ Pointer ;
typedef int Page ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;
typedef TYPE_1__ GinPostingList ;


 TYPE_1__* GinDataLeafPageGetPostingList (int ) ;
 scalar_t__ GinDataLeafPageGetPostingListSize (int ) ;
 TYPE_1__* GinNextPostingListSegment (TYPE_1__*) ;
 scalar_t__ GinPageIsCompressed (int ) ;
 scalar_t__ ItemPointerIsValid (int *) ;
 int * dataLeafPageGetUncompressed (int ,int*) ;
 scalar_t__ ginCompareItemPointers (int *,int *) ;
 int * ginPostingListDecodeAllSegments (TYPE_1__*,scalar_t__,int*) ;
 int memcpy (int *,int *,int) ;
 int * palloc (int) ;

ItemPointer
GinDataLeafPageGetItems(Page page, int *nitems, ItemPointerData advancePast)
{
 ItemPointer result;

 if (GinPageIsCompressed(page))
 {
  GinPostingList *seg = GinDataLeafPageGetPostingList(page);
  Size len = GinDataLeafPageGetPostingListSize(page);
  Pointer endptr = ((Pointer) seg) + len;
  GinPostingList *next;


  if (ItemPointerIsValid(&advancePast))
  {
   next = GinNextPostingListSegment(seg);
   while ((Pointer) next < endptr &&
       ginCompareItemPointers(&next->first, &advancePast) <= 0)
   {
    seg = next;
    next = GinNextPostingListSegment(seg);
   }
   len = endptr - (Pointer) seg;
  }

  if (len > 0)
   result = ginPostingListDecodeAllSegments(seg, len, nitems);
  else
  {
   result = ((void*)0);
   *nitems = 0;
  }
 }
 else
 {
  ItemPointer tmp = dataLeafPageGetUncompressed(page, nitems);

  result = palloc((*nitems) * sizeof(ItemPointerData));
  memcpy(result, tmp, (*nitems) * sizeof(ItemPointerData));
 }

 return result;
}
