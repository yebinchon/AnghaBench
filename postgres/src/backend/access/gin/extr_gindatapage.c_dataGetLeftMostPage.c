
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ maxoff; } ;
typedef int PostingItem ;
typedef int Page ;
typedef int GinBtree ;
typedef int BlockNumber ;


 int Assert (int) ;
 scalar_t__ FirstOffsetNumber ;
 int * GinDataPageGetPostingItem (int ,scalar_t__) ;
 TYPE_1__* GinPageGetOpaque (int ) ;
 int GinPageIsData (int ) ;
 int GinPageIsLeaf (int ) ;
 int PostingItemGetBlockNumber (int *) ;

__attribute__((used)) static BlockNumber
dataGetLeftMostPage(GinBtree btree, Page page)
{
 PostingItem *pitem;

 Assert(!GinPageIsLeaf(page));
 Assert(GinPageIsData(page));
 Assert(GinPageGetOpaque(page)->maxoff >= FirstOffsetNumber);

 pitem = GinDataPageGetPostingItem(page, FirstOffsetNumber);
 return PostingItemGetBlockNumber(pitem);
}
