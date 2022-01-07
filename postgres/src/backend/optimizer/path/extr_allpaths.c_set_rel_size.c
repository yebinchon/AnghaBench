
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_31__ {int self_reference; int * tablesample; int relkind; scalar_t__ inh; } ;
struct TYPE_30__ {scalar_t__ reloptkind; int rtekind; scalar_t__ rows; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ RangeTblEntry ;
typedef int PlannerInfo ;
typedef int Index ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ IS_DUMMY_REL (TYPE_1__*) ;
 int RELKIND_FOREIGN_TABLE ;
 int RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELOPT_BASEREL ;
 int elog (int ,char*,int) ;
 scalar_t__ relation_excluded_by_constraints (int *,TYPE_1__*,TYPE_2__*) ;
 int set_append_rel_size (int *,TYPE_1__*,int ,TYPE_2__*) ;
 int set_cte_pathlist (int *,TYPE_1__*,TYPE_2__*) ;
 int set_dummy_rel_pathlist (TYPE_1__*) ;
 int set_foreign_size (int *,TYPE_1__*,TYPE_2__*) ;
 int set_function_size_estimates (int *,TYPE_1__*) ;
 int set_namedtuplestore_pathlist (int *,TYPE_1__*,TYPE_2__*) ;
 int set_plain_rel_size (int *,TYPE_1__*,TYPE_2__*) ;
 int set_result_pathlist (int *,TYPE_1__*,TYPE_2__*) ;
 int set_subquery_pathlist (int *,TYPE_1__*,int ,TYPE_2__*) ;
 int set_tablefunc_size_estimates (int *,TYPE_1__*) ;
 int set_tablesample_rel_size (int *,TYPE_1__*,TYPE_2__*) ;
 int set_values_size_estimates (int *,TYPE_1__*) ;
 int set_worktable_pathlist (int *,TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void
set_rel_size(PlannerInfo *root, RelOptInfo *rel,
    Index rti, RangeTblEntry *rte)
{
 if (rel->reloptkind == RELOPT_BASEREL &&
  relation_excluded_by_constraints(root, rel, rte))
 {
  set_dummy_rel_pathlist(rel);
 }
 else if (rte->inh)
 {

  set_append_rel_size(root, rel, rti, rte);
 }
 else
 {
  switch (rel->rtekind)
  {
   case 132:
    if (rte->relkind == RELKIND_FOREIGN_TABLE)
    {

     set_foreign_size(root, rel, rte);
    }
    else if (rte->relkind == RELKIND_PARTITIONED_TABLE)
    {





     set_dummy_rel_pathlist(rel);
    }
    else if (rte->tablesample != ((void*)0))
    {

     set_tablesample_rel_size(root, rel, rte);
    }
    else
    {

     set_plain_rel_size(root, rel, rte);
    }
    break;
   case 130:






    set_subquery_pathlist(root, rel, rti, rte);
    break;
   case 134:
    set_function_size_estimates(root, rel);
    break;
   case 129:
    set_tablefunc_size_estimates(root, rel);
    break;
   case 128:
    set_values_size_estimates(root, rel);
    break;
   case 135:






    if (rte->self_reference)
     set_worktable_pathlist(root, rel, rte);
    else
     set_cte_pathlist(root, rel, rte);
    break;
   case 133:

    set_namedtuplestore_pathlist(root, rel, rte);
    break;
   case 131:

    set_result_pathlist(root, rel, rte);
    break;
   default:
    elog(ERROR, "unexpected rtekind: %d", (int) rel->rtekind);
    break;
  }
 }




 Assert(rel->rows > 0 || IS_DUMMY_REL(rel));
}
