
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nomatch_varno; int nomatch_option; int * targetlist; int * target_rte; } ;
typedef int ReplaceVarsNoMatchOption ;
typedef TYPE_1__ ReplaceVarsFromTargetList_context ;
typedef int RangeTblEntry ;
typedef int Node ;
typedef int List ;


 int ReplaceVarsFromTargetList_callback ;
 int * replace_rte_variables (int *,int,int,int ,void*,int*) ;

Node *
ReplaceVarsFromTargetList(Node *node,
        int target_varno, int sublevels_up,
        RangeTblEntry *target_rte,
        List *targetlist,
        ReplaceVarsNoMatchOption nomatch_option,
        int nomatch_varno,
        bool *outer_hasSubLinks)
{
 ReplaceVarsFromTargetList_context context;

 context.target_rte = target_rte;
 context.targetlist = targetlist;
 context.nomatch_option = nomatch_option;
 context.nomatch_varno = nomatch_varno;

 return replace_rte_variables(node, target_varno, sublevels_up,
         ReplaceVarsFromTargetList_callback,
         (void *) &context,
         outer_hasSubLinks);
}
