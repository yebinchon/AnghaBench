
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ maxoff; } ;
typedef int PostingItem ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;


 int Assert (int) ;
 scalar_t__ FirstOffsetNumber ;
 int GinDataPageGetPostingItem (int ,scalar_t__) ;
 int GinDataPageSetDataSize (int ,scalar_t__) ;
 TYPE_1__* GinPageGetOpaque (int ) ;
 int GinPageIsLeaf (int ) ;
 int memmove (int ,int ,int) ;

void
GinPageDeletePostingItem(Page page, OffsetNumber offset)
{
 OffsetNumber maxoff = GinPageGetOpaque(page)->maxoff;

 Assert(!GinPageIsLeaf(page));
 Assert(offset >= FirstOffsetNumber && offset <= maxoff);

 if (offset != maxoff)
  memmove(GinDataPageGetPostingItem(page, offset),
    GinDataPageGetPostingItem(page, offset + 1),
    sizeof(PostingItem) * (maxoff - offset));

 maxoff--;
 GinPageGetOpaque(page)->maxoff = maxoff;

 GinDataPageSetDataSize(page, maxoff * sizeof(PostingItem));
}
