
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef scalar_t__ Page ;


 int PageGetPageSize (scalar_t__) ;
 int memcpy (char*,char*,int ) ;
 int pfree (scalar_t__) ;

void
PageRestoreTempPage(Page tempPage, Page oldPage)
{
 Size pageSize;

 pageSize = PageGetPageSize(tempPage);
 memcpy((char *) oldPage, (char *) tempPage, pageSize);

 pfree(tempPage);
}
