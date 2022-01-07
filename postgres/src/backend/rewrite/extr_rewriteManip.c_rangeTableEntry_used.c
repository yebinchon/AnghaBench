
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rt_index; int sublevels_up; } ;
typedef TYPE_1__ rangeTableEntry_used_context ;
typedef int Node ;


 int query_or_expression_tree_walker (int *,int ,void*,int ) ;
 int rangeTableEntry_used_walker ;

bool
rangeTableEntry_used(Node *node, int rt_index, int sublevels_up)
{
 rangeTableEntry_used_context context;

 context.rt_index = rt_index;
 context.sublevels_up = sublevels_up;





 return query_or_expression_tree_walker(node,
             rangeTableEntry_used_walker,
             (void *) &context,
             0);
}
