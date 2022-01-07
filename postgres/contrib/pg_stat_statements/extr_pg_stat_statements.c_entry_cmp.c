
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double usage; } ;
struct TYPE_4__ {TYPE_1__ counters; } ;
typedef TYPE_2__ pgssEntry ;



__attribute__((used)) static int
entry_cmp(const void *lhs, const void *rhs)
{
 double l_usage = (*(pgssEntry *const *) lhs)->counters.usage;
 double r_usage = (*(pgssEntry *const *) rhs)->counters.usage;

 if (l_usage < r_usage)
  return -1;
 else if (l_usage > r_usage)
  return +1;
 else
  return 0;
}
