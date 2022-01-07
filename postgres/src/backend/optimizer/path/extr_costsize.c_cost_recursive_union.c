
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int startup_cost; int total_cost; double rows; TYPE_1__* pathtarget; } ;
struct TYPE_6__ {int width; } ;
typedef TYPE_2__ Path ;
typedef int Cost ;


 int Max (int ,int ) ;
 double cpu_tuple_cost ;

void
cost_recursive_union(Path *runion, Path *nrterm, Path *rterm)
{
 Cost startup_cost;
 Cost total_cost;
 double total_rows;


 startup_cost = nrterm->startup_cost;
 total_cost = nrterm->total_cost;
 total_rows = nrterm->rows;







 total_cost += 10 * rterm->total_cost;
 total_rows += 10 * rterm->rows;






 total_cost += cpu_tuple_cost * total_rows;

 runion->startup_cost = startup_cost;
 runion->total_cost = total_cost;
 runion->rows = total_rows;
 runion->pathtarget->width = Max(nrterm->pathtarget->width,
         rterm->pathtarget->width);
}
