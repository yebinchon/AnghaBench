
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int isTopQual; int * root; } ;
typedef TYPE_1__ process_sublinks_context ;
typedef int PlannerInfo ;
typedef int Node ;


 int * process_sublinks_mutator (int *,TYPE_1__*) ;

Node *
SS_process_sublinks(PlannerInfo *root, Node *expr, bool isQual)
{
 process_sublinks_context context;

 context.root = root;
 context.isTopQual = isQual;
 return process_sublinks_mutator(expr, &context);
}
