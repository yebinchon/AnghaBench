
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double delta; } ;
typedef TYPE_1__ CommonEntry ;



__attribute__((used)) static int
common_entry_cmp(const void *i1, const void *i2)
{
 double delta1 = ((CommonEntry *) i1)->delta;
 double delta2 = ((CommonEntry *) i2)->delta;

 if (delta1 < delta2)
  return -1;
 else if (delta1 > delta2)
  return 1;
 else
  return 0;
}
