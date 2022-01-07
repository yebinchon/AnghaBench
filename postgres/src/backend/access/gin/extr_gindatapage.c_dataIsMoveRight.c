
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int itemptr; } ;
typedef int Page ;
typedef int ItemPointer ;
typedef TYPE_1__* GinBtree ;


 int GinDataPageGetRightBound (int ) ;
 scalar_t__ GinPageRightMost (int ) ;
 scalar_t__ ginCompareItemPointers (int *,int ) ;

__attribute__((used)) static bool
dataIsMoveRight(GinBtree btree, Page page)
{
 ItemPointer iptr = GinDataPageGetRightBound(page);

 if (GinPageRightMost(page))
  return 0;

 return (ginCompareItemPointers(&btree->itemptr, iptr) > 0) ? 1 : 0;
}
