
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cost; } ;
typedef TYPE_1__ SPLITCOST ;



__attribute__((used)) static int
comparecost(const void *a, const void *b)
{
 if (((const SPLITCOST *) a)->cost == ((const SPLITCOST *) b)->cost)
  return 0;
 else
  return (((const SPLITCOST *) a)->cost > ((const SPLITCOST *) b)->cost) ? 1 : -1;
}
