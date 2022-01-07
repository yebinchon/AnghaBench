
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef scalar_t__ IndexTuple ;
typedef int GinBtree ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ FirstOffsetNumber ;
 scalar_t__ GinGetDownlink (scalar_t__) ;
 int GinPageIsData (int ) ;
 int GinPageIsLeaf (int ) ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;

__attribute__((used)) static OffsetNumber
entryFindChildPtr(GinBtree btree, Page page, BlockNumber blkno, OffsetNumber storedOff)
{
 OffsetNumber i,
    maxoff = PageGetMaxOffsetNumber(page);
 IndexTuple itup;

 Assert(!GinPageIsLeaf(page));
 Assert(!GinPageIsData(page));


 if (storedOff >= FirstOffsetNumber && storedOff <= maxoff)
 {
  itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, storedOff));
  if (GinGetDownlink(itup) == blkno)
   return storedOff;





  for (i = storedOff + 1; i <= maxoff; i++)
  {
   itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, i));
   if (GinGetDownlink(itup) == blkno)
    return i;
  }
  maxoff = storedOff - 1;
 }


 for (i = FirstOffsetNumber; i <= maxoff; i++)
 {
  itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, i));
  if (GinGetDownlink(itup) == blkno)
   return i;
 }

 return InvalidOffsetNumber;
}
