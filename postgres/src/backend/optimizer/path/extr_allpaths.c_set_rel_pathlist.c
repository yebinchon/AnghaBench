
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_3__ ;
typedef struct TYPE_41__ TYPE_2__ ;
typedef struct TYPE_40__ TYPE_1__ ;


struct TYPE_42__ {int all_baserels; } ;
struct TYPE_41__ {int * tablesample; int relkind; scalar_t__ inh; } ;
struct TYPE_40__ {int rtekind; scalar_t__ reloptkind; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ RangeTblEntry ;
typedef TYPE_3__ PlannerInfo ;
typedef int Index ;


 scalar_t__ BMS_SINGLETON ;
 int ERROR ;
 scalar_t__ IS_DUMMY_REL (TYPE_1__*) ;
 int RELKIND_FOREIGN_TABLE ;
 scalar_t__ RELOPT_BASEREL ;
 scalar_t__ bms_membership (int ) ;
 int debug_print_rel (TYPE_3__*,TYPE_1__*) ;
 int elog (int ,char*,int) ;
 int generate_gather_paths (TYPE_3__*,TYPE_1__*,int) ;
 int set_append_rel_pathlist (TYPE_3__*,TYPE_1__*,int ,TYPE_2__*) ;
 int set_cheapest (TYPE_1__*) ;
 int set_foreign_pathlist (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;
 int set_function_pathlist (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;
 int set_plain_rel_pathlist (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;
 int set_rel_pathlist_hook (TYPE_3__*,TYPE_1__*,int ,TYPE_2__*) ;
 int set_tablefunc_pathlist (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;
 int set_tablesample_rel_pathlist (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;
 int set_values_pathlist (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;
 int stub1 (TYPE_3__*,TYPE_1__*,int ,TYPE_2__*) ;

__attribute__((used)) static void
set_rel_pathlist(PlannerInfo *root, RelOptInfo *rel,
     Index rti, RangeTblEntry *rte)
{
 if (IS_DUMMY_REL(rel))
 {

 }
 else if (rte->inh)
 {

  set_append_rel_pathlist(root, rel, rti, rte);
 }
 else
 {
  switch (rel->rtekind)
  {
   case 132:
    if (rte->relkind == RELKIND_FOREIGN_TABLE)
    {

     set_foreign_pathlist(root, rel, rte);
    }
    else if (rte->tablesample != ((void*)0))
    {

     set_tablesample_rel_pathlist(root, rel, rte);
    }
    else
    {

     set_plain_rel_pathlist(root, rel, rte);
    }
    break;
   case 130:

    break;
   case 134:

    set_function_pathlist(root, rel, rte);
    break;
   case 129:

    set_tablefunc_pathlist(root, rel, rte);
    break;
   case 128:

    set_values_pathlist(root, rel, rte);
    break;
   case 135:

    break;
   case 133:

    break;
   case 131:

    break;
   default:
    elog(ERROR, "unexpected rtekind: %d", (int) rel->rtekind);
    break;
  }
 }







 if (set_rel_pathlist_hook)
  (*set_rel_pathlist_hook) (root, rel, rti, rte);
 if (rel->reloptkind == RELOPT_BASEREL &&
  bms_membership(root->all_baserels) != BMS_SINGLETON)
  generate_gather_paths(root, rel, 0);


 set_cheapest(rel);




}
