
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ relid; double tuples; int baserestrictinfo; int baserestrictcost; int rows; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;


 int Assert (int) ;
 int JOIN_INNER ;
 int clamp_row_est (double) ;
 double clauselist_selectivity (int *,int ,int ,int ,int *) ;
 int cost_qual_eval (int *,int ,int *) ;
 int set_rel_width (int *,TYPE_1__*) ;

void
set_baserel_size_estimates(PlannerInfo *root, RelOptInfo *rel)
{
 double nrows;


 Assert(rel->relid > 0);

 nrows = rel->tuples *
  clauselist_selectivity(root,
          rel->baserestrictinfo,
          0,
          JOIN_INNER,
          ((void*)0));

 rel->rows = clamp_row_est(nrows);

 cost_qual_eval(&rel->baserestrictcost, rel->baserestrictinfo, root);

 set_rel_width(root, rel);
}
