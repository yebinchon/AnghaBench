
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ btpo_cycleid; int btpo_flags; } ;
typedef int Page ;
typedef int BlockNumber ;
typedef TYPE_1__* BTPageOpaque ;


 int BTP_HAS_GARBAGE ;
 int BTP_SPLIT_END ;
 scalar_t__ P_ISDELETED (TYPE_1__*) ;
 scalar_t__ P_ISLEAF (TYPE_1__*) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int mask_lp_flags (int ) ;
 int mask_page_content (int ) ;
 int mask_page_hint_bits (int ) ;
 int mask_page_lsn_and_checksum (int ) ;
 int mask_unused_space (int ) ;

void
btree_mask(char *pagedata, BlockNumber blkno)
{
 Page page = (Page) pagedata;
 BTPageOpaque maskopaq;

 mask_page_lsn_and_checksum(page);

 mask_page_hint_bits(page);
 mask_unused_space(page);

 maskopaq = (BTPageOpaque) PageGetSpecialPointer(page);

 if (P_ISDELETED(maskopaq))
 {




  mask_page_content(page);
 }
 else if (P_ISLEAF(maskopaq))
 {





  mask_lp_flags(page);
 }





 maskopaq->btpo_flags &= ~BTP_HAS_GARBAGE;






 maskopaq->btpo_flags &= ~BTP_SPLIT_END;
 maskopaq->btpo_cycleid = 0;
}
