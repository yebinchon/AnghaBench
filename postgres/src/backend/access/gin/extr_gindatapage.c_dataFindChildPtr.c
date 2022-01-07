
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ maxoff; } ;
typedef int PostingItem ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int GinBtree ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ FirstOffsetNumber ;
 int * GinDataPageGetPostingItem (int ,scalar_t__) ;
 TYPE_1__* GinPageGetOpaque (int ) ;
 int GinPageIsData (int ) ;
 int GinPageIsLeaf (int ) ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ PostingItemGetBlockNumber (int *) ;

__attribute__((used)) static OffsetNumber
dataFindChildPtr(GinBtree btree, Page page, BlockNumber blkno, OffsetNumber storedOff)
{
 OffsetNumber i,
    maxoff = GinPageGetOpaque(page)->maxoff;
 PostingItem *pitem;

 Assert(!GinPageIsLeaf(page));
 Assert(GinPageIsData(page));


 if (storedOff >= FirstOffsetNumber && storedOff <= maxoff)
 {
  pitem = GinDataPageGetPostingItem(page, storedOff);
  if (PostingItemGetBlockNumber(pitem) == blkno)
   return storedOff;





  for (i = storedOff + 1; i <= maxoff; i++)
  {
   pitem = GinDataPageGetPostingItem(page, i);
   if (PostingItemGetBlockNumber(pitem) == blkno)
    return i;
  }

  maxoff = storedOff - 1;
 }


 for (i = FirstOffsetNumber; i <= maxoff; i++)
 {
  pitem = GinDataPageGetPostingItem(page, i);
  if (PostingItemGetBlockNumber(pitem) == blkno)
   return i;
 }

 return InvalidOffsetNumber;
}
