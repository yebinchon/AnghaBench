
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pd_lower; int pd_upper; scalar_t__ pd_special; } ;
typedef scalar_t__ Size ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef scalar_t__ OffsetNumber ;
typedef void* LocationIndex ;
typedef int ItemIdData ;
typedef scalar_t__ ItemId ;
typedef int Item ;


 scalar_t__ BLCKSZ ;
 int ERRCODE_DATA_CORRUPTED ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ ItemIdHasStorage (scalar_t__) ;
 scalar_t__ ItemIdIsUsed (scalar_t__) ;
 int ItemIdSetNormal (scalar_t__,int,scalar_t__) ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 scalar_t__ MaxHeapTuplesPerPage ;
 scalar_t__ OffsetNumberIsValid (scalar_t__) ;
 scalar_t__ OffsetNumberNext (int ) ;
 int PAI_IS_HEAP ;
 int PAI_OVERWRITE ;
 int PANIC ;
 int PageClearHasFreeLinePointers (TYPE_1__*) ;
 scalar_t__ PageGetItemId (TYPE_1__*,scalar_t__) ;
 int PageGetMaxOffsetNumber (scalar_t__) ;
 scalar_t__ PageHasFreeLinePointers (TYPE_1__*) ;
 int SizeOfPageHeaderData ;
 int VALGRIND_CHECK_MEM_IS_DEFINED (int ,scalar_t__) ;
 int WARNING ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int,scalar_t__,scalar_t__) ;
 int memcpy (char*,int ,scalar_t__) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;

OffsetNumber
PageAddItemExtended(Page page,
     Item item,
     Size size,
     OffsetNumber offsetNumber,
     int flags)
{
 PageHeader phdr = (PageHeader) page;
 Size alignedSize;
 int lower;
 int upper;
 ItemId itemId;
 OffsetNumber limit;
 bool needshuffle = 0;




 if (phdr->pd_lower < SizeOfPageHeaderData ||
  phdr->pd_lower > phdr->pd_upper ||
  phdr->pd_upper > phdr->pd_special ||
  phdr->pd_special > BLCKSZ)
  ereport(PANIC,
    (errcode(ERRCODE_DATA_CORRUPTED),
     errmsg("corrupted page pointers: lower = %u, upper = %u, special = %u",
      phdr->pd_lower, phdr->pd_upper, phdr->pd_special)));




 limit = OffsetNumberNext(PageGetMaxOffsetNumber(page));


 if (OffsetNumberIsValid(offsetNumber))
 {

  if ((flags & PAI_OVERWRITE) != 0)
  {
   if (offsetNumber < limit)
   {
    itemId = PageGetItemId(phdr, offsetNumber);
    if (ItemIdIsUsed(itemId) || ItemIdHasStorage(itemId))
    {
     elog(WARNING, "will not overwrite a used ItemId");
     return InvalidOffsetNumber;
    }
   }
  }
  else
  {
   if (offsetNumber < limit)
    needshuffle = 1;
  }
 }
 else
 {


  if (PageHasFreeLinePointers(phdr))
  {





   for (offsetNumber = 1; offsetNumber < limit; offsetNumber++)
   {
    itemId = PageGetItemId(phdr, offsetNumber);
    if (!ItemIdIsUsed(itemId) && !ItemIdHasStorage(itemId))
     break;
   }
   if (offsetNumber >= limit)
   {

    PageClearHasFreeLinePointers(phdr);
   }
  }
  else
  {

   offsetNumber = limit;
  }
 }


 if (offsetNumber > limit)
 {
  elog(WARNING, "specified item offset is too large");
  return InvalidOffsetNumber;
 }


 if ((flags & PAI_IS_HEAP) != 0 && offsetNumber > MaxHeapTuplesPerPage)
 {
  elog(WARNING, "can't put more than MaxHeapTuplesPerPage items in a heap page");
  return InvalidOffsetNumber;
 }







 if (offsetNumber == limit || needshuffle)
  lower = phdr->pd_lower + sizeof(ItemIdData);
 else
  lower = phdr->pd_lower;

 alignedSize = MAXALIGN(size);

 upper = (int) phdr->pd_upper - (int) alignedSize;

 if (lower > upper)
  return InvalidOffsetNumber;




 itemId = PageGetItemId(phdr, offsetNumber);

 if (needshuffle)
  memmove(itemId + 1, itemId,
    (limit - offsetNumber) * sizeof(ItemIdData));


 ItemIdSetNormal(itemId, upper, size);
 VALGRIND_CHECK_MEM_IS_DEFINED(item, size);


 memcpy((char *) page + upper, item, size);


 phdr->pd_lower = (LocationIndex) lower;
 phdr->pd_upper = (LocationIndex) upper;

 return offsetNumber;
}
