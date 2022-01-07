
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ center; } ;
typedef TYPE_1__ gseg_picksplit_item ;



__attribute__((used)) static int
gseg_picksplit_item_cmp(const void *a, const void *b)
{
 const gseg_picksplit_item *i1 = (const gseg_picksplit_item *) a;
 const gseg_picksplit_item *i2 = (const gseg_picksplit_item *) b;

 if (i1->center < i2->center)
  return -1;
 else if (i1->center == i2->center)
  return 0;
 else
  return 1;
}
