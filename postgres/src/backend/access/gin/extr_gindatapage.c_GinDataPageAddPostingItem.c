
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
 scalar_t__ GinDataPageGetPostingItem (int ,scalar_t__) ;
 int GinDataPageSetDataSize (int ,scalar_t__) ;
 TYPE_1__* GinPageGetOpaque (int ) ;
 int GinPageIsLeaf (int ) ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ PostingItemGetBlockNumber (int *) ;
 int memcpy (char*,int *,int) ;
 int memmove (char*,char*,scalar_t__) ;

void
GinDataPageAddPostingItem(Page page, PostingItem *data, OffsetNumber offset)
{
 OffsetNumber maxoff = GinPageGetOpaque(page)->maxoff;
 char *ptr;

 Assert(PostingItemGetBlockNumber(data) != InvalidBlockNumber);
 Assert(!GinPageIsLeaf(page));

 if (offset == InvalidOffsetNumber)
 {
  ptr = (char *) GinDataPageGetPostingItem(page, maxoff + 1);
 }
 else
 {
  ptr = (char *) GinDataPageGetPostingItem(page, offset);
  if (offset != maxoff + 1)
   memmove(ptr + sizeof(PostingItem),
     ptr,
     (maxoff - offset + 1) * sizeof(PostingItem));
 }
 memcpy(ptr, data, sizeof(PostingItem));

 maxoff++;
 GinPageGetOpaque(page)->maxoff = maxoff;






 GinDataPageSetDataSize(page, maxoff * sizeof(PostingItem));
}
