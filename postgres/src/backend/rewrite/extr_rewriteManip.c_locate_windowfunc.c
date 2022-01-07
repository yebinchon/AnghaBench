
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int win_location; } ;
typedef TYPE_1__ locate_windowfunc_context ;
typedef int Node ;


 int locate_windowfunc_walker ;
 int query_or_expression_tree_walker (int *,int ,void*,int ) ;

int
locate_windowfunc(Node *node)
{
 locate_windowfunc_context context;

 context.win_location = -1;





 (void) query_or_expression_tree_walker(node,
             locate_windowfunc_walker,
             (void *) &context,
             0);

 return context.win_location;
}
