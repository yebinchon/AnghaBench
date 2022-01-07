
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int * varlist; } ;
typedef TYPE_1__ pull_var_clause_context ;
typedef int Node ;
typedef int List ;


 int Assert (int) ;
 int * NIL ;
 int PVC_INCLUDE_AGGREGATES ;
 int PVC_INCLUDE_PLACEHOLDERS ;
 int PVC_INCLUDE_WINDOWFUNCS ;
 int PVC_RECURSE_AGGREGATES ;
 int PVC_RECURSE_PLACEHOLDERS ;
 int PVC_RECURSE_WINDOWFUNCS ;
 int pull_var_clause_walker (int *,TYPE_1__*) ;

List *
pull_var_clause(Node *node, int flags)
{
 pull_var_clause_context context;


 Assert((flags & (PVC_INCLUDE_AGGREGATES | PVC_RECURSE_AGGREGATES))
     != (PVC_INCLUDE_AGGREGATES | PVC_RECURSE_AGGREGATES));
 Assert((flags & (PVC_INCLUDE_WINDOWFUNCS | PVC_RECURSE_WINDOWFUNCS))
     != (PVC_INCLUDE_WINDOWFUNCS | PVC_RECURSE_WINDOWFUNCS));
 Assert((flags & (PVC_INCLUDE_PLACEHOLDERS | PVC_RECURSE_PLACEHOLDERS))
     != (PVC_INCLUDE_PLACEHOLDERS | PVC_RECURSE_PLACEHOLDERS));

 context.varlist = NIL;
 context.flags = flags;

 pull_var_clause_walker(node, &context);
 return context.varlist;
}
