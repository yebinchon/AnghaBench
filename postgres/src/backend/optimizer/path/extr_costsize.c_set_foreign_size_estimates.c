
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ relid; int rows; int baserestrictinfo; int baserestrictcost; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;


 int Assert (int) ;
 int cost_qual_eval (int *,int ,int *) ;
 int set_rel_width (int *,TYPE_1__*) ;

void
set_foreign_size_estimates(PlannerInfo *root, RelOptInfo *rel)
{

 Assert(rel->relid > 0);

 rel->rows = 1000;

 cost_qual_eval(&rel->baserestrictcost, rel->baserestrictinfo, root);

 set_rel_width(root, rel);
}
