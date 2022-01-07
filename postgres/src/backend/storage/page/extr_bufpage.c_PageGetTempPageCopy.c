
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef scalar_t__ Page ;


 int PageGetPageSize (scalar_t__) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 scalar_t__ palloc (int ) ;

Page
PageGetTempPageCopy(Page page)
{
 Size pageSize;
 Page temp;

 pageSize = PageGetPageSize(page);
 temp = (Page) palloc(pageSize);

 memcpy(temp, page, pageSize);

 return temp;
}
