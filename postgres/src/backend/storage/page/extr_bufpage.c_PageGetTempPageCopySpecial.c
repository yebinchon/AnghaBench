
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef scalar_t__ Page ;


 int PageGetPageSize (scalar_t__) ;
 int PageGetSpecialPointer (scalar_t__) ;
 int PageGetSpecialSize (scalar_t__) ;
 int PageInit (scalar_t__,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ palloc (int ) ;

Page
PageGetTempPageCopySpecial(Page page)
{
 Size pageSize;
 Page temp;

 pageSize = PageGetPageSize(page);
 temp = (Page) palloc(pageSize);

 PageInit(temp, pageSize, PageGetSpecialSize(page));
 memcpy(PageGetSpecialPointer(temp),
     PageGetSpecialPointer(page),
     PageGetSpecialSize(page));

 return temp;
}
