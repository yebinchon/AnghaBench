
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * subst_nodes; int * root; } ;
typedef TYPE_1__ convert_testexpr_context ;
typedef int PlannerInfo ;
typedef int Node ;
typedef int List ;


 int * convert_testexpr_mutator (int *,TYPE_1__*) ;

__attribute__((used)) static Node *
convert_testexpr(PlannerInfo *root,
     Node *testexpr,
     List *subst_nodes)
{
 convert_testexpr_context context;

 context.root = root;
 context.subst_nodes = subst_nodes;
 return convert_testexpr_mutator(testexpr, &context);
}
