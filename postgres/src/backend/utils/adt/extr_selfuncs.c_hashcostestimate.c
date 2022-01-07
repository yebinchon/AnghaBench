
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int costs ;
struct TYPE_4__ {double indexCorrelation; double numIndexPages; int indexSelectivity; int indexTotalCost; int indexStartupCost; } ;
typedef int Selectivity ;
typedef int PlannerInfo ;
typedef int IndexPath ;
typedef TYPE_1__ GenericCosts ;
typedef int Cost ;


 int MemSet (TYPE_1__*,int ,int) ;
 int genericcostestimate (int *,int *,double,TYPE_1__*) ;

void
hashcostestimate(PlannerInfo *root, IndexPath *path, double loop_count,
     Cost *indexStartupCost, Cost *indexTotalCost,
     Selectivity *indexSelectivity, double *indexCorrelation,
     double *indexPages)
{
 GenericCosts costs;

 MemSet(&costs, 0, sizeof(costs));

 genericcostestimate(root, path, loop_count, &costs);
 *indexStartupCost = costs.indexStartupCost;
 *indexTotalCost = costs.indexTotalCost;
 *indexSelectivity = costs.indexSelectivity;
 *indexCorrelation = costs.indexCorrelation;
 *indexPages = costs.numIndexPages;
}
