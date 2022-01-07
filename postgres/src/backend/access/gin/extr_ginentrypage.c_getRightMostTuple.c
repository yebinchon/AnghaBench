
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Page ;
typedef int OffsetNumber ;
typedef int IndexTuple ;


 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 int PageGetMaxOffsetNumber (int ) ;

__attribute__((used)) static IndexTuple
getRightMostTuple(Page page)
{
 OffsetNumber maxoff = PageGetMaxOffsetNumber(page);

 return (IndexTuple) PageGetItem(page, PageGetItemId(page, maxoff));
}
