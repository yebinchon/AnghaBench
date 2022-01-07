
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BlockNumber ;


 int mask_page_lsn_and_checksum (char*) ;
 int mask_unused_space (char*) ;

void
seq_mask(char *page, BlockNumber blkno)
{
 mask_page_lsn_and_checksum(page);

 mask_unused_space(page);
}
