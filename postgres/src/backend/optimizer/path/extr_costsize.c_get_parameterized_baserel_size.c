
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double tuples; double rows; int relid; int baserestrictinfo; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int List ;


 int JOIN_INNER ;
 double clamp_row_est (double) ;
 double clauselist_selectivity (int *,int *,int ,int ,int *) ;
 int * list_concat_copy (int *,int ) ;

double
get_parameterized_baserel_size(PlannerInfo *root, RelOptInfo *rel,
          List *param_clauses)
{
 List *allclauses;
 double nrows;







 allclauses = list_concat_copy(param_clauses, rel->baserestrictinfo);
 nrows = rel->tuples *
  clauselist_selectivity(root,
          allclauses,
          rel->relid,
          JOIN_INNER,
          ((void*)0));
 nrows = clamp_row_est(nrows);

 if (nrows > rel->rows)
  nrows = rel->rows;
 return nrows;
}
