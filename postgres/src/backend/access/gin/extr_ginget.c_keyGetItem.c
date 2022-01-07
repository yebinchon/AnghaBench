
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_8__ {int isFinished; void* curItem; } ;
struct TYPE_7__ {int isFinished; void* curItem; size_t nrequired; size_t nadditional; size_t nentries; size_t nuserentries; int* entryRes; int (* triConsistentFn ) (TYPE_1__*) ;int curItemMatches; int recheckCurItem; TYPE_2__** scanEntry; TYPE_2__** additionalEntries; TYPE_2__** requiredEntries; } ;
typedef int Snapshot ;
typedef int MemoryContext ;
typedef void* ItemPointerData ;
typedef int GinTernaryValue ;
typedef int GinState ;
typedef TYPE_1__* GinScanKey ;
typedef TYPE_2__* GinScanEntry ;


 int Assert (int) ;



 scalar_t__ GinItemPointerGetBlockNumber (void**) ;
 scalar_t__ GinItemPointerGetOffsetNumber (void**) ;
 int InvalidOffsetNumber ;
 int ItemPointerIsLossyPage (void**) ;
 int ItemPointerSet (void**,scalar_t__,int ) ;
 int ItemPointerSetLossyPage (void**,scalar_t__) ;
 int ItemPointerSetMax (void**) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int OffsetNumberPrev (scalar_t__) ;
 int entryGetItem (int *,TYPE_2__*,void*,int ) ;
 scalar_t__ ginCompareItemPointers (void**,void**) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

__attribute__((used)) static void
keyGetItem(GinState *ginstate, MemoryContext tempCtx, GinScanKey key,
     ItemPointerData advancePast, Snapshot snapshot)
{
 ItemPointerData minItem;
 ItemPointerData curPageLossy;
 uint32 i;
 bool haveLossyEntry;
 GinScanEntry entry;
 GinTernaryValue res;
 MemoryContext oldCtx;
 bool allFinished;

 Assert(!key->isFinished);






 if (ginCompareItemPointers(&key->curItem, &advancePast) > 0)
  return;
 ItemPointerSetMax(&minItem);
 allFinished = 1;
 for (i = 0; i < key->nrequired; i++)
 {
  entry = key->requiredEntries[i];

  if (entry->isFinished)
   continue;
  if (ginCompareItemPointers(&entry->curItem, &advancePast) <= 0)
  {
   entryGetItem(ginstate, entry, advancePast, snapshot);
   if (entry->isFinished)
    continue;
  }

  allFinished = 0;
  if (ginCompareItemPointers(&entry->curItem, &minItem) < 0)
   minItem = entry->curItem;
 }

 if (allFinished)
 {

  key->isFinished = 1;
  return;
 }
 if (ItemPointerIsLossyPage(&minItem))
 {
  if (GinItemPointerGetBlockNumber(&advancePast) <
   GinItemPointerGetBlockNumber(&minItem))
  {
   ItemPointerSet(&advancePast,
         GinItemPointerGetBlockNumber(&minItem),
         InvalidOffsetNumber);
  }
 }
 else
 {
  Assert(GinItemPointerGetOffsetNumber(&minItem) > 0);
  ItemPointerSet(&advancePast,
        GinItemPointerGetBlockNumber(&minItem),
        OffsetNumberPrev(GinItemPointerGetOffsetNumber(&minItem)));
 }
 for (i = 0; i < key->nadditional; i++)
 {
  entry = key->additionalEntries[i];

  if (entry->isFinished)
   continue;

  if (ginCompareItemPointers(&entry->curItem, &advancePast) <= 0)
  {
   entryGetItem(ginstate, entry, advancePast, snapshot);
   if (entry->isFinished)
    continue;
  }






  if (ginCompareItemPointers(&entry->curItem, &minItem) < 0)
  {
   Assert(ItemPointerIsLossyPage(&minItem));
   minItem = entry->curItem;
  }
 }
 key->curItem = minItem;
 ItemPointerSetLossyPage(&curPageLossy,
       GinItemPointerGetBlockNumber(&key->curItem));
 haveLossyEntry = 0;
 for (i = 0; i < key->nentries; i++)
 {
  entry = key->scanEntry[i];
  if (entry->isFinished == 0 &&
   ginCompareItemPointers(&entry->curItem, &curPageLossy) == 0)
  {
   if (i < key->nuserentries)
    key->entryRes[i] = 129;
   else
    key->entryRes[i] = 128;
   haveLossyEntry = 1;
  }
  else
   key->entryRes[i] = 130;
 }


 oldCtx = MemoryContextSwitchTo(tempCtx);

 if (haveLossyEntry)
 {

  res = key->triConsistentFn(key);

  if (res == 128 || res == 129)
  {

   MemoryContextSwitchTo(oldCtx);
   MemoryContextReset(tempCtx);


   key->curItem = curPageLossy;
   key->curItemMatches = 1;
   key->recheckCurItem = 1;
   return;
  }
 }
 for (i = 0; i < key->nentries; i++)
 {
  entry = key->scanEntry[i];
  if (entry->isFinished)
   key->entryRes[i] = 130;
  else if (ginCompareItemPointers(&entry->curItem, &curPageLossy) == 0)
   key->entryRes[i] = 129;
  else if (ginCompareItemPointers(&entry->curItem, &minItem) == 0)
   key->entryRes[i] = 128;
  else
   key->entryRes[i] = 130;
 }

 res = key->triConsistentFn(key);

 switch (res)
 {
  case 128:
   key->curItemMatches = 1;

   break;

  case 130:
   key->curItemMatches = 0;
   break;

  case 129:
   key->curItemMatches = 1;
   key->recheckCurItem = 1;
   break;

  default:





   key->curItemMatches = 1;
   key->recheckCurItem = 1;
   break;
 }
 MemoryContextSwitchTo(oldCtx);
 MemoryContextReset(tempCtx);
}
