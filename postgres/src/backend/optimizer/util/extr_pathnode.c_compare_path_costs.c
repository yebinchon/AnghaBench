
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ startup_cost; scalar_t__ total_cost; } ;
typedef TYPE_1__ Path ;
typedef scalar_t__ CostSelector ;


 scalar_t__ STARTUP_COST ;

int
compare_path_costs(Path *path1, Path *path2, CostSelector criterion)
{
 if (criterion == STARTUP_COST)
 {
  if (path1->startup_cost < path2->startup_cost)
   return -1;
  if (path1->startup_cost > path2->startup_cost)
   return +1;





  if (path1->total_cost < path2->total_cost)
   return -1;
  if (path1->total_cost > path2->total_cost)
   return +1;
 }
 else
 {
  if (path1->total_cost < path2->total_cost)
   return -1;
  if (path1->total_cost > path2->total_cost)
   return +1;




  if (path1->startup_cost < path2->startup_cost)
   return -1;
  if (path1->startup_cost > path2->startup_cost)
   return +1;
 }
 return 0;
}
