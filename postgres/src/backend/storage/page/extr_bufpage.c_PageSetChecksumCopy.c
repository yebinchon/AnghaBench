
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pd_checksum; } ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef int BlockNumber ;


 int BLCKSZ ;
 int DataChecksumsEnabled () ;
 char* MemoryContextAlloc (int ,int ) ;
 scalar_t__ PageIsNew (scalar_t__) ;
 int TopMemoryContext ;
 int memcpy (char*,char*,int ) ;
 int pg_checksum_page (char*,int ) ;

char *
PageSetChecksumCopy(Page page, BlockNumber blkno)
{
 static char *pageCopy = ((void*)0);


 if (PageIsNew(page) || !DataChecksumsEnabled())
  return (char *) page;







 if (pageCopy == ((void*)0))
  pageCopy = MemoryContextAlloc(TopMemoryContext, BLCKSZ);

 memcpy(pageCopy, (char *) page, BLCKSZ);
 ((PageHeader) pageCopy)->pd_checksum = pg_checksum_page(pageCopy, blkno);
 return pageCopy;
}
