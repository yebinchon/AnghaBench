
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int maxoff; } ;
struct TYPE_12__ {int itemptr; int (* getLeftMostChild ) (TYPE_3__*,int ) ;scalar_t__ fullScan; } ;
struct TYPE_11__ {int off; int predictNumber; int buffer; } ;
struct TYPE_10__ {int key; } ;
typedef TYPE_1__ PostingItem ;
typedef int Page ;
typedef int OffsetNumber ;
typedef TYPE_2__ GinBtreeStack ;
typedef TYPE_3__* GinBtree ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 int FirstOffsetNumber ;
 TYPE_1__* GinDataPageGetPostingItem (int ,int) ;
 TYPE_8__* GinPageGetOpaque (int ) ;
 int GinPageIsData (int ) ;
 int GinPageIsLeaf (int ) ;
 int PostingItemGetBlockNumber (TYPE_1__*) ;
 int ginCompareItemPointers (int *,int *) ;
 int stub1 (TYPE_3__*,int ) ;

__attribute__((used)) static BlockNumber
dataLocateItem(GinBtree btree, GinBtreeStack *stack)
{
 OffsetNumber low,
    high,
    maxoff;
 PostingItem *pitem = ((void*)0);
 int result;
 Page page = BufferGetPage(stack->buffer);

 Assert(!GinPageIsLeaf(page));
 Assert(GinPageIsData(page));

 if (btree->fullScan)
 {
  stack->off = FirstOffsetNumber;
  stack->predictNumber *= GinPageGetOpaque(page)->maxoff;
  return btree->getLeftMostChild(btree, page);
 }

 low = FirstOffsetNumber;
 maxoff = high = GinPageGetOpaque(page)->maxoff;
 Assert(high >= low);

 high++;

 while (high > low)
 {
  OffsetNumber mid = low + ((high - low) / 2);

  pitem = GinDataPageGetPostingItem(page, mid);

  if (mid == maxoff)
  {




   result = -1;
  }
  else
  {
   pitem = GinDataPageGetPostingItem(page, mid);
   result = ginCompareItemPointers(&btree->itemptr, &(pitem->key));
  }

  if (result == 0)
  {
   stack->off = mid;
   return PostingItemGetBlockNumber(pitem);
  }
  else if (result > 0)
   low = mid + 1;
  else
   high = mid;
 }

 Assert(high >= FirstOffsetNumber && high <= maxoff);

 stack->off = high;
 pitem = GinDataPageGetPostingItem(page, high);
 return PostingItemGetBlockNumber(pitem);
}
