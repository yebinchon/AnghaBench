
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int rows; } ;
typedef int SpecialJoinInfo ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int List ;


 int calc_joinrel_size_estimate (int *,TYPE_1__*,TYPE_1__*,TYPE_1__*,int ,int ,int *,int *) ;

void
set_joinrel_size_estimates(PlannerInfo *root, RelOptInfo *rel,
         RelOptInfo *outer_rel,
         RelOptInfo *inner_rel,
         SpecialJoinInfo *sjinfo,
         List *restrictlist)
{
 rel->rows = calc_joinrel_size_estimate(root,
             rel,
             outer_rel,
             inner_rel,
             outer_rel->rows,
             inner_rel->rows,
             sjinfo,
             restrictlist);
}
