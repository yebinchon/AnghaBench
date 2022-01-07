
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ (* getLeftMostChild ) (TYPE_2__*,int ) ;int entryCategory; int entryKey; int entryAttnum; int ginstate; scalar_t__ fullScan; } ;
struct TYPE_6__ {int off; int predictNumber; int buffer; } ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int * IndexTuple ;
typedef int GinNullCategory ;
typedef TYPE_1__ GinBtreeStack ;
typedef TYPE_2__* GinBtree ;
typedef int Datum ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 int FirstOffsetNumber ;
 scalar_t__ GIN_ROOT_BLKNO ;
 scalar_t__ GinGetDownlink (int *) ;
 int GinPageIsData (int ) ;
 int GinPageIsLeaf (int ) ;
 scalar_t__ GinPageRightMost (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int) ;
 int PageGetMaxOffsetNumber (int ) ;
 int ginCompareAttEntries (int ,int ,int ,int ,int,int ,int ) ;
 int gintuple_get_attrnum (int ,int *) ;
 int gintuple_get_key (int ,int *,int *) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static BlockNumber
entryLocateEntry(GinBtree btree, GinBtreeStack *stack)
{
 OffsetNumber low,
    high,
    maxoff;
 IndexTuple itup = ((void*)0);
 int result;
 Page page = BufferGetPage(stack->buffer);

 Assert(!GinPageIsLeaf(page));
 Assert(!GinPageIsData(page));

 if (btree->fullScan)
 {
  stack->off = FirstOffsetNumber;
  stack->predictNumber *= PageGetMaxOffsetNumber(page);
  return btree->getLeftMostChild(btree, page);
 }

 low = FirstOffsetNumber;
 maxoff = high = PageGetMaxOffsetNumber(page);
 Assert(high >= low);

 high++;

 while (high > low)
 {
  OffsetNumber mid = low + ((high - low) / 2);

  if (mid == maxoff && GinPageRightMost(page))
  {

   result = -1;
  }
  else
  {
   OffsetNumber attnum;
   Datum key;
   GinNullCategory category;

   itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, mid));
   attnum = gintuple_get_attrnum(btree->ginstate, itup);
   key = gintuple_get_key(btree->ginstate, itup, &category);
   result = ginCompareAttEntries(btree->ginstate,
            btree->entryAttnum,
            btree->entryKey,
            btree->entryCategory,
            attnum, key, category);
  }

  if (result == 0)
  {
   stack->off = mid;
   Assert(GinGetDownlink(itup) != GIN_ROOT_BLKNO);
   return GinGetDownlink(itup);
  }
  else if (result > 0)
   low = mid + 1;
  else
   high = mid;
 }

 Assert(high >= FirstOffsetNumber && high <= maxoff);

 stack->off = high;
 itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, high));
 Assert(GinGetDownlink(itup) != GIN_ROOT_BLKNO);
 return GinGetDownlink(itup);
}
