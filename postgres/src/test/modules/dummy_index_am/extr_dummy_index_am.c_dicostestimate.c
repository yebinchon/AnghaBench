
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Selectivity ;
typedef int PlannerInfo ;
typedef int IndexPath ;
typedef double Cost ;



__attribute__((used)) static void
dicostestimate(PlannerInfo *root, IndexPath *path, double loop_count,
      Cost *indexStartupCost, Cost *indexTotalCost,
      Selectivity *indexSelectivity, double *indexCorrelation,
      double *indexPages)
{

 *indexStartupCost = 1.0e10;
 *indexTotalCost = 1.0e10;


 *indexSelectivity = 1;
 *indexCorrelation = 0;
 *indexPages = 1;
}
