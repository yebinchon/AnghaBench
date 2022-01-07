
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int rows; int parent; } ;
struct TYPE_7__ {double rows; } ;
typedef int SpecialJoinInfo ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_2__ Path ;
typedef int List ;


 double calc_joinrel_size_estimate (int *,TYPE_1__*,int ,int ,int ,int ,int *,int *) ;

double
get_parameterized_joinrel_size(PlannerInfo *root, RelOptInfo *rel,
          Path *outer_path,
          Path *inner_path,
          SpecialJoinInfo *sjinfo,
          List *restrict_clauses)
{
 double nrows;
 nrows = calc_joinrel_size_estimate(root,
            rel,
            outer_path->parent,
            inner_path->parent,
            outer_path->rows,
            inner_path->rows,
            sjinfo,
            restrict_clauses);

 if (nrows > rel->rows)
  nrows = rel->rows;
 return nrows;
}
