
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Page ;
typedef scalar_t__ IndexTuple ;
typedef int GinBtree ;
typedef int BlockNumber ;


 int Assert (int) ;
 scalar_t__ FirstOffsetNumber ;
 int GinGetDownlink (scalar_t__) ;
 int GinPageIsData (int ) ;
 int GinPageIsLeaf (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;

__attribute__((used)) static BlockNumber
entryGetLeftMostPage(GinBtree btree, Page page)
{
 IndexTuple itup;

 Assert(!GinPageIsLeaf(page));
 Assert(!GinPageIsData(page));
 Assert(PageGetMaxOffsetNumber(page) >= FirstOffsetNumber);

 itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, FirstOffsetNumber));
 return GinGetDownlink(itup);
}
