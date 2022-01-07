
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ndims; } ;
typedef int SortSupportData ;
typedef TYPE_1__* MultiSortSupport ;


 int Assert (int) ;
 int MultiSortSupportData ;
 scalar_t__ offsetof (int ,int ) ;
 scalar_t__ palloc0 (scalar_t__) ;
 int ssup ;

MultiSortSupport
multi_sort_init(int ndims)
{
 MultiSortSupport mss;

 Assert(ndims >= 2);

 mss = (MultiSortSupport) palloc0(offsetof(MultiSortSupportData, ssup)
          + sizeof(SortSupportData) * ndims);

 mss->ndims = ndims;

 return mss;
}
