
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int indexed_tlist ;
struct TYPE_3__ {int rtoffset; int newvarno; int * subplan_itlist; int * root; } ;
typedef TYPE_1__ fix_upper_expr_context ;
typedef int PlannerInfo ;
typedef int Node ;
typedef int Index ;


 int * fix_upper_expr_mutator (int *,TYPE_1__*) ;

__attribute__((used)) static Node *
fix_upper_expr(PlannerInfo *root,
      Node *node,
      indexed_tlist *subplan_itlist,
      Index newvarno,
      int rtoffset)
{
 fix_upper_expr_context context;

 context.root = root;
 context.subplan_itlist = subplan_itlist;
 context.newvarno = newvarno;
 context.rtoffset = rtoffset;
 return fix_upper_expr_mutator(node, &context);
}
