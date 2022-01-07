
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sublevels_up; int relids; } ;
typedef TYPE_1__ find_dependent_phvs_context ;
typedef int Node ;


 int bms_make_singleton (int) ;
 int find_dependent_phvs_walker ;
 int query_or_expression_tree_walker (int *,int ,void*,int ) ;

__attribute__((used)) static bool
find_dependent_phvs(Node *node, int varno)
{
 find_dependent_phvs_context context;

 context.relids = bms_make_singleton(varno);
 context.sublevels_up = 0;




 return query_or_expression_tree_walker(node,
             find_dependent_phvs_walker,
             (void *) &context,
             0);
}
