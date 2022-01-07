
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ startup_cost; double total_cost; } ;
typedef TYPE_1__ Path ;
typedef scalar_t__ Cost ;


 int TOTAL_COST ;
 int compare_path_costs (TYPE_1__*,TYPE_1__*,int ) ;

int
compare_fractional_path_costs(Path *path1, Path *path2,
         double fraction)
{
 Cost cost1,
    cost2;

 if (fraction <= 0.0 || fraction >= 1.0)
  return compare_path_costs(path1, path2, TOTAL_COST);
 cost1 = path1->startup_cost +
  fraction * (path1->total_cost - path1->startup_cost);
 cost2 = path2->startup_cost +
  fraction * (path2->total_cost - path2->startup_cost);
 if (cost1 < cost2)
  return -1;
 if (cost1 > cost2)
  return +1;
 return 0;
}
