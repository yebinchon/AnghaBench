
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int deparse_cxt; } ;
typedef int PlanState ;
typedef int Node ;
typedef int List ;
typedef TYPE_1__ ExplainState ;


 int ExplainPropertyText (char const*,char*,TYPE_1__*) ;
 char* deparse_expression (int *,int *,int,int) ;
 int * set_deparse_context_planstate (int ,int *,int *) ;

__attribute__((used)) static void
show_expression(Node *node, const char *qlabel,
    PlanState *planstate, List *ancestors,
    bool useprefix, ExplainState *es)
{
 List *context;
 char *exprstr;


 context = set_deparse_context_planstate(es->deparse_cxt,
           (Node *) planstate,
           ancestors);


 exprstr = deparse_expression(node, context, useprefix, 0);


 ExplainPropertyText(qlabel, exprstr, es);
}
