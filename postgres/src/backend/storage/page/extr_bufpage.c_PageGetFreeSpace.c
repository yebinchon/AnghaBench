
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pd_lower; scalar_t__ pd_upper; } ;
typedef int Size ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef int ItemIdData ;



Size
PageGetFreeSpace(Page page)
{
 int space;





 space = (int) ((PageHeader) page)->pd_upper -
  (int) ((PageHeader) page)->pd_lower;

 if (space < (int) sizeof(ItemIdData))
  return 0;
 space -= sizeof(ItemIdData);

 return (Size) space;
}
