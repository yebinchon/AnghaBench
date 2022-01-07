
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlanState ;
typedef int Node ;
typedef int List ;
typedef int ExplainState ;


 int * NIL ;
 scalar_t__ make_ands_explicit (int *) ;
 int show_expression (int *,char const*,int *,int *,int,int *) ;

__attribute__((used)) static void
show_qual(List *qual, const char *qlabel,
    PlanState *planstate, List *ancestors,
    bool useprefix, ExplainState *es)
{
 Node *node;


 if (qual == NIL)
  return;


 node = (Node *) make_ands_explicit(qual);


 show_expression(node, qlabel, planstate, ancestors, useprefix, es);
}
