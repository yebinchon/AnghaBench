
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int estimate; int * case_val; int active_fns; TYPE_3__* root; int * boundParams; } ;
typedef TYPE_2__ eval_const_expressions_context ;
struct TYPE_8__ {TYPE_1__* glob; } ;
struct TYPE_6__ {int * boundParams; } ;
typedef TYPE_3__ PlannerInfo ;
typedef int Node ;


 int NIL ;
 int * eval_const_expressions_mutator (int *,TYPE_2__*) ;

Node *
eval_const_expressions(PlannerInfo *root, Node *node)
{
 eval_const_expressions_context context;

 if (root)
  context.boundParams = root->glob->boundParams;
 else
  context.boundParams = ((void*)0);
 context.root = root;
 context.active_fns = NIL;
 context.case_val = ((void*)0);
 context.estimate = 0;
 return eval_const_expressions_mutator(node, &context);
}
