
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* parse; } ;
struct TYPE_5__ {int * havingQual; } ;
typedef TYPE_2__ PlannerInfo ;
typedef int Node ;
typedef int List ;


 int * NIL ;
 int PVC_INCLUDE_PLACEHOLDERS ;
 int PVC_RECURSE_AGGREGATES ;
 int PVC_RECURSE_WINDOWFUNCS ;
 int add_vars_to_targetlist (TYPE_2__*,int *,int ,int) ;
 int bms_make_singleton (int ) ;
 int list_free (int *) ;
 int * pull_var_clause (int *,int) ;

void
build_base_rel_tlists(PlannerInfo *root, List *final_tlist)
{
 List *tlist_vars = pull_var_clause((Node *) final_tlist,
            PVC_RECURSE_AGGREGATES |
            PVC_RECURSE_WINDOWFUNCS |
            PVC_INCLUDE_PLACEHOLDERS);

 if (tlist_vars != NIL)
 {
  add_vars_to_targetlist(root, tlist_vars, bms_make_singleton(0), 1);
  list_free(tlist_vars);
 }





 if (root->parse->havingQual)
 {
  List *having_vars = pull_var_clause(root->parse->havingQual,
              PVC_RECURSE_AGGREGATES |
              PVC_INCLUDE_PLACEHOLDERS);

  if (having_vars != NIL)
  {
   add_vars_to_targetlist(root, having_vars,
           bms_make_singleton(0), 1);
   list_free(having_vars);
  }
 }
}
