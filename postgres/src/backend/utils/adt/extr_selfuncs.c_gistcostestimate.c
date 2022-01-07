
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int costs ;
struct TYPE_10__ {int indexStartupCost; int indexTotalCost; int num_sa_scans; double indexCorrelation; double numIndexPages; int indexSelectivity; } ;
struct TYPE_9__ {int tree_height; int pages; int tuples; } ;
struct TYPE_8__ {TYPE_2__* indexinfo; } ;
typedef int Selectivity ;
typedef int PlannerInfo ;
typedef TYPE_1__ IndexPath ;
typedef TYPE_2__ IndexOptInfo ;
typedef TYPE_3__ GenericCosts ;
typedef int Cost ;


 int MemSet (TYPE_3__*,int ,int) ;
 int ceil (int) ;
 int cpu_operator_cost ;
 int genericcostestimate (int *,TYPE_1__*,double,TYPE_3__*) ;
 int log (double) ;

void
gistcostestimate(PlannerInfo *root, IndexPath *path, double loop_count,
     Cost *indexStartupCost, Cost *indexTotalCost,
     Selectivity *indexSelectivity, double *indexCorrelation,
     double *indexPages)
{
 IndexOptInfo *index = path->indexinfo;
 GenericCosts costs;
 Cost descentCost;

 MemSet(&costs, 0, sizeof(costs));

 genericcostestimate(root, path, loop_count, &costs);
 if (index->tree_height < 0)
 {
  if (index->pages > 1)
   index->tree_height = (int) (log(index->pages) / log(100.0));
  else
   index->tree_height = 0;
 }






 if (index->tuples > 1)
 {
  descentCost = ceil(log(index->tuples)) * cpu_operator_cost;
  costs.indexStartupCost += descentCost;
  costs.indexTotalCost += costs.num_sa_scans * descentCost;
 }




 descentCost = (index->tree_height + 1) * 50.0 * cpu_operator_cost;
 costs.indexStartupCost += descentCost;
 costs.indexTotalCost += costs.num_sa_scans * descentCost;

 *indexStartupCost = costs.indexStartupCost;
 *indexTotalCost = costs.indexTotalCost;
 *indexSelectivity = costs.indexSelectivity;
 *indexCorrelation = costs.indexCorrelation;
 *indexPages = costs.numIndexPages;
}
