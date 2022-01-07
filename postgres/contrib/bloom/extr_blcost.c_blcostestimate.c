
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int costs ;
struct TYPE_10__ {double indexCorrelation; double numIndexPages; int indexSelectivity; int indexTotalCost; int indexStartupCost; int numIndexTuples; } ;
struct TYPE_9__ {int tuples; } ;
struct TYPE_8__ {TYPE_2__* indexinfo; } ;
typedef int Selectivity ;
typedef int PlannerInfo ;
typedef TYPE_1__ IndexPath ;
typedef TYPE_2__ IndexOptInfo ;
typedef TYPE_3__ GenericCosts ;
typedef int Cost ;


 int MemSet (TYPE_3__*,int ,int) ;
 int genericcostestimate (int *,TYPE_1__*,double,TYPE_3__*) ;

void
blcostestimate(PlannerInfo *root, IndexPath *path, double loop_count,
      Cost *indexStartupCost, Cost *indexTotalCost,
      Selectivity *indexSelectivity, double *indexCorrelation,
      double *indexPages)
{
 IndexOptInfo *index = path->indexinfo;
 GenericCosts costs;

 MemSet(&costs, 0, sizeof(costs));


 costs.numIndexTuples = index->tuples;


 genericcostestimate(root, path, loop_count, &costs);

 *indexStartupCost = costs.indexStartupCost;
 *indexTotalCost = costs.indexTotalCost;
 *indexSelectivity = costs.indexSelectivity;
 *indexCorrelation = costs.indexCorrelation;
 *indexPages = costs.numIndexPages;
}
