
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int agg_location; int sublevels_up; } ;
typedef TYPE_1__ locate_agg_of_level_context ;
typedef int Node ;


 int locate_agg_of_level_walker ;
 int query_or_expression_tree_walker (int *,int ,void*,int ) ;

int
locate_agg_of_level(Node *node, int levelsup)
{
 locate_agg_of_level_context context;

 context.agg_location = -1;
 context.sublevels_up = levelsup;





 (void) query_or_expression_tree_walker(node,
             locate_agg_of_level_walker,
             (void *) &context,
             0);

 return context.agg_location;
}
