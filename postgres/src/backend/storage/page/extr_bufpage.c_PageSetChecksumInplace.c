
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pd_checksum; } ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef int BlockNumber ;


 int DataChecksumsEnabled () ;
 scalar_t__ PageIsNew (scalar_t__) ;
 int pg_checksum_page (char*,int ) ;

void
PageSetChecksumInplace(Page page, BlockNumber blkno)
{

 if (PageIsNew(page) || !DataChecksumsEnabled())
  return;

 ((PageHeader) page)->pd_checksum = pg_checksum_page((char *) page, blkno);
}
