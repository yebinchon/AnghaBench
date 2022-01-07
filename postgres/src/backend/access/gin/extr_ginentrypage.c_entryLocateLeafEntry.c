
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int entryCategory; int entryKey; int entryAttnum; int ginstate; scalar_t__ fullScan; } ;
struct TYPE_5__ {void* off; int buffer; } ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef scalar_t__ IndexTuple ;
typedef int GinNullCategory ;
typedef TYPE_1__ GinBtreeStack ;
typedef TYPE_2__* GinBtree ;
typedef int Datum ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 void* FirstOffsetNumber ;
 int GinPageIsData (int ) ;
 int GinPageIsLeaf (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int ginCompareAttEntries (int ,int ,int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ gintuple_get_attrnum (int ,scalar_t__) ;
 int gintuple_get_key (int ,scalar_t__,int *) ;

__attribute__((used)) static bool
entryLocateLeafEntry(GinBtree btree, GinBtreeStack *stack)
{
 Page page = BufferGetPage(stack->buffer);
 OffsetNumber low,
    high;

 Assert(GinPageIsLeaf(page));
 Assert(!GinPageIsData(page));

 if (btree->fullScan)
 {
  stack->off = FirstOffsetNumber;
  return 1;
 }

 low = FirstOffsetNumber;
 high = PageGetMaxOffsetNumber(page);

 if (high < low)
 {
  stack->off = FirstOffsetNumber;
  return 0;
 }

 high++;

 while (high > low)
 {
  OffsetNumber mid = low + ((high - low) / 2);
  IndexTuple itup;
  OffsetNumber attnum;
  Datum key;
  GinNullCategory category;
  int result;

  itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, mid));
  attnum = gintuple_get_attrnum(btree->ginstate, itup);
  key = gintuple_get_key(btree->ginstate, itup, &category);
  result = ginCompareAttEntries(btree->ginstate,
           btree->entryAttnum,
           btree->entryKey,
           btree->entryCategory,
           attnum, key, category);
  if (result == 0)
  {
   stack->off = mid;
   return 1;
  }
  else if (result > 0)
   low = mid + 1;
  else
   high = mid;
 }

 stack->off = high;
 return 0;
}
