
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pd_lower; } ;
typedef TYPE_1__* PageHeader ;
typedef int Page ;
typedef int BlockNumber ;


 scalar_t__ BRIN_IS_META_PAGE (int ) ;
 scalar_t__ BRIN_IS_REGULAR_PAGE (int ) ;
 scalar_t__ SizeOfPageHeaderData ;
 int mask_page_hint_bits (int ) ;
 int mask_page_lsn_and_checksum (int ) ;
 int mask_unused_space (int ) ;

void
brin_mask(char *pagedata, BlockNumber blkno)
{
 Page page = (Page) pagedata;
 PageHeader pagehdr = (PageHeader) page;

 mask_page_lsn_and_checksum(page);

 mask_page_hint_bits(page);






 if (BRIN_IS_REGULAR_PAGE(page) ||
  (BRIN_IS_META_PAGE(page) && pagehdr->pd_lower > SizeOfPageHeaderData))
 {
  mask_unused_space(page);
 }
}
