
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelOptInfo ;
typedef int RangeTblEntry ;
typedef int PlannerInfo ;



__attribute__((used)) static bool
fileIsForeignScanParallelSafe(PlannerInfo *root, RelOptInfo *rel,
         RangeTblEntry *rte)
{
 return 1;
}
