
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hasho_flag; } ;
typedef int Page ;
typedef TYPE_1__* HashPageOpaque ;
typedef int BlockNumber ;


 int LH_BUCKET_PAGE ;
 int LH_OVERFLOW_PAGE ;
 int LH_PAGE_HAS_DEAD_TUPLES ;
 int LH_PAGE_TYPE ;
 int LH_UNUSED_PAGE ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int mask_lp_flags (int ) ;
 int mask_page_content (int ) ;
 int mask_page_hint_bits (int ) ;
 int mask_page_lsn_and_checksum (int ) ;
 int mask_unused_space (int ) ;

void
hash_mask(char *pagedata, BlockNumber blkno)
{
 Page page = (Page) pagedata;
 HashPageOpaque opaque;
 int pagetype;

 mask_page_lsn_and_checksum(page);

 mask_page_hint_bits(page);
 mask_unused_space(page);

 opaque = (HashPageOpaque) PageGetSpecialPointer(page);

 pagetype = opaque->hasho_flag & LH_PAGE_TYPE;
 if (pagetype == LH_UNUSED_PAGE)
 {



  mask_page_content(page);
 }
 else if (pagetype == LH_BUCKET_PAGE ||
    pagetype == LH_OVERFLOW_PAGE)
 {





  mask_lp_flags(page);
 }





 opaque->hasho_flag &= ~LH_PAGE_HAS_DEAD_TUPLES;
}
