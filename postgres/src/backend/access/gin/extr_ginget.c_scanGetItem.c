
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_8__ {scalar_t__ recheckCurItem; int curItem; int curItemMatches; scalar_t__ isFinished; } ;
struct TYPE_7__ {scalar_t__ nkeys; scalar_t__ keys; int tempCtx; int ginstate; } ;
struct TYPE_6__ {int xs_snapshot; int opaque; } ;
typedef int ItemPointerData ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* GinScanOpaque ;
typedef TYPE_3__* GinScanKey ;


 int Assert (int) ;
 scalar_t__ GinItemPointerGetBlockNumber (int *) ;
 scalar_t__ GinItemPointerGetOffsetNumber (int *) ;
 int InvalidOffsetNumber ;
 scalar_t__ ItemPointerIsLossyPage (int *) ;
 int ItemPointerIsMin (int *) ;
 int ItemPointerSet (int *,scalar_t__,int ) ;
 int ItemPointerSetMin (int *) ;
 int OffsetNumberPrev (scalar_t__) ;
 scalar_t__ ginCompareItemPointers (int *,int *) ;
 int keyGetItem (int *,int ,TYPE_3__*,int ,int ) ;

__attribute__((used)) static bool
scanGetItem(IndexScanDesc scan, ItemPointerData advancePast,
   ItemPointerData *item, bool *recheck)
{
 GinScanOpaque so = (GinScanOpaque) scan->opaque;
 uint32 i;
 bool match;
 do
 {
  ItemPointerSetMin(item);
  match = 1;
  for (i = 0; i < so->nkeys && match; i++)
  {
   GinScanKey key = so->keys + i;


   keyGetItem(&so->ginstate, so->tempCtx, key, advancePast,
        scan->xs_snapshot);

   if (key->isFinished)
    return 0;





   if (!key->curItemMatches)
   {
    advancePast = key->curItem;
    match = 0;
    break;
   }
   if (ItemPointerIsLossyPage(&key->curItem))
   {
    if (GinItemPointerGetBlockNumber(&advancePast) <
     GinItemPointerGetBlockNumber(&key->curItem))
    {
     ItemPointerSet(&advancePast,
           GinItemPointerGetBlockNumber(&key->curItem),
           InvalidOffsetNumber);
    }
   }
   else
   {
    Assert(GinItemPointerGetOffsetNumber(&key->curItem) > 0);
    ItemPointerSet(&advancePast,
          GinItemPointerGetBlockNumber(&key->curItem),
          OffsetNumberPrev(GinItemPointerGetOffsetNumber(&key->curItem)));
   }
   if (i == 0)
   {
    *item = key->curItem;
   }
   else
   {
    if (ItemPointerIsLossyPage(&key->curItem) ||
     ItemPointerIsLossyPage(item))
    {
     Assert(GinItemPointerGetBlockNumber(&key->curItem) >= GinItemPointerGetBlockNumber(item));
     match = (GinItemPointerGetBlockNumber(&key->curItem) ==
        GinItemPointerGetBlockNumber(item));
    }
    else
    {
     Assert(ginCompareItemPointers(&key->curItem, item) >= 0);
     match = (ginCompareItemPointers(&key->curItem, item) == 0);
    }
   }
  }
 } while (!match);

 Assert(!ItemPointerIsMin(item));
 *recheck = 0;
 for (i = 0; i < so->nkeys; i++)
 {
  GinScanKey key = so->keys + i;

  if (key->recheckCurItem)
  {
   *recheck = 1;
   break;
  }
 }

 return 1;
}
