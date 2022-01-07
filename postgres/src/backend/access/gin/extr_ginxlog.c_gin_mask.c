
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {scalar_t__ pd_lower; } ;
typedef TYPE_1__* PageHeader ;
typedef int Page ;
typedef TYPE_2__* GinPageOpaque ;
typedef int BlockNumber ;


 int GIN_DELETED ;
 TYPE_2__* GinPageGetOpaque (int ) ;
 scalar_t__ SizeOfPageHeaderData ;
 int mask_page_content (int ) ;
 int mask_page_hint_bits (int ) ;
 int mask_page_lsn_and_checksum (int ) ;
 int mask_unused_space (int ) ;

void
gin_mask(char *pagedata, BlockNumber blkno)
{
 Page page = (Page) pagedata;
 PageHeader pagehdr = (PageHeader) page;
 GinPageOpaque opaque;

 mask_page_lsn_and_checksum(page);
 opaque = GinPageGetOpaque(page);

 mask_page_hint_bits(page);






 if (opaque->flags & GIN_DELETED)
  mask_page_content(page);
 else if (pagehdr->pd_lower > SizeOfPageHeaderData)
  mask_unused_space(page);
}
