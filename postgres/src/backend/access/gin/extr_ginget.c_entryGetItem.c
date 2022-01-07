
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t ntuples; scalar_t__ blockno; scalar_t__* offsets; } ;
struct TYPE_6__ {int isFinished; int reduceResult; size_t offset; size_t nlist; int * list; int curItem; int buffer; TYPE_2__* matchResult; int * matchIterator; scalar_t__ matchBitmap; } ;
typedef int Snapshot ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemPointerData ;
typedef int GinState ;
typedef TYPE_1__* GinScanEntry ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BufferIsValid (int ) ;
 scalar_t__ GinItemPointerGetBlockNumber (int *) ;
 scalar_t__ GinItemPointerGetOffsetNumber (int *) ;
 scalar_t__ ItemPointerIsLossyPage (int *) ;
 int ItemPointerIsValid (int *) ;
 int ItemPointerSet (int *,scalar_t__,scalar_t__) ;
 int ItemPointerSetInvalid (int *) ;
 int ItemPointerSetLossyPage (int *,scalar_t__) ;
 scalar_t__ dropItem (TYPE_1__*) ;
 int entryLoadMoreItems (int *,TYPE_1__*,int ,int ) ;
 scalar_t__ ginCompareItemPointers (int *,int *) ;
 int tbm_end_iterate (int *) ;
 TYPE_2__* tbm_iterate (int *) ;

__attribute__((used)) static void
entryGetItem(GinState *ginstate, GinScanEntry entry,
    ItemPointerData advancePast, Snapshot snapshot)
{
 Assert(!entry->isFinished);

 Assert(!ItemPointerIsValid(&entry->curItem) ||
     ginCompareItemPointers(&entry->curItem, &advancePast) <= 0);

 if (entry->matchBitmap)
 {

  BlockNumber advancePastBlk = GinItemPointerGetBlockNumber(&advancePast);
  OffsetNumber advancePastOff = GinItemPointerGetOffsetNumber(&advancePast);
  bool gotitem = 0;

  do
  {




   while (entry->matchResult == ((void*)0) ||
       (entry->matchResult->ntuples >= 0 &&
     entry->offset >= entry->matchResult->ntuples) ||
       entry->matchResult->blockno < advancePastBlk ||
       (ItemPointerIsLossyPage(&advancePast) &&
     entry->matchResult->blockno == advancePastBlk))
   {
    entry->matchResult = tbm_iterate(entry->matchIterator);

    if (entry->matchResult == ((void*)0))
    {
     ItemPointerSetInvalid(&entry->curItem);
     tbm_end_iterate(entry->matchIterator);
     entry->matchIterator = ((void*)0);
     entry->isFinished = 1;
     break;
    }







    entry->offset = 0;
   }
   if (entry->isFinished)
    break;





   if (entry->matchResult->ntuples < 0)
   {
    ItemPointerSetLossyPage(&entry->curItem,
          entry->matchResult->blockno);






    gotitem = 1;
    break;
   }





   if (entry->matchResult->blockno == advancePastBlk)
   {





    if (entry->matchResult->offsets[entry->matchResult->ntuples - 1] <= advancePastOff)
    {
     entry->offset = entry->matchResult->ntuples;
     continue;
    }


    while (entry->matchResult->offsets[entry->offset] <= advancePastOff)
     entry->offset++;
   }

   ItemPointerSet(&entry->curItem,
         entry->matchResult->blockno,
         entry->matchResult->offsets[entry->offset]);
   entry->offset++;
   gotitem = 1;
  } while (!gotitem || (entry->reduceResult == 1 && dropItem(entry)));
 }
 else if (!BufferIsValid(entry->buffer))
 {




  do
  {
   if (entry->offset >= entry->nlist)
   {
    ItemPointerSetInvalid(&entry->curItem);
    entry->isFinished = 1;
    break;
   }

   entry->curItem = entry->list[entry->offset++];
  } while (ginCompareItemPointers(&entry->curItem, &advancePast) <= 0);

 }
 else
 {

  do
  {

   while (entry->offset >= entry->nlist)
   {
    entryLoadMoreItems(ginstate, entry, advancePast, snapshot);

    if (entry->isFinished)
    {
     ItemPointerSetInvalid(&entry->curItem);
     return;
    }
   }

   entry->curItem = entry->list[entry->offset++];

  } while (ginCompareItemPointers(&entry->curItem, &advancePast) <= 0 ||
     (entry->reduceResult == 1 && dropItem(entry)));
 }
}
