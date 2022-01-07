
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int Page ;
typedef int BlockNumber ;


 int GistClearPageHasGarbage (int ) ;
 int GistMarkFollowRight (int ) ;
 scalar_t__ GistPageIsLeaf (int ) ;
 int GistPageSetNSN (int ,int ) ;
 scalar_t__ MASK_MARKER ;
 int mask_lp_flags (int ) ;
 int mask_page_hint_bits (int ) ;
 int mask_page_lsn_and_checksum (int ) ;
 int mask_unused_space (int ) ;

void
gist_mask(char *pagedata, BlockNumber blkno)
{
 Page page = (Page) pagedata;

 mask_page_lsn_and_checksum(page);

 mask_page_hint_bits(page);
 mask_unused_space(page);





 GistPageSetNSN(page, (uint64) MASK_MARKER);





 GistMarkFollowRight(page);

 if (GistPageIsLeaf(page))
 {





  mask_lp_flags(page);
 }





 GistClearPageHasGarbage(page);
}
