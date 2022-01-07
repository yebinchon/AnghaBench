
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int varno; int subrelids; scalar_t__ sublevels_up; } ;
typedef TYPE_1__ substitute_phv_relids_context ;
typedef int Relids ;
typedef int Node ;


 int query_or_expression_tree_walker (int *,int ,void*,int ) ;
 int substitute_phv_relids_walker ;

__attribute__((used)) static void
substitute_phv_relids(Node *node, int varno, Relids subrelids)
{
 substitute_phv_relids_context context;

 context.varno = varno;
 context.sublevels_up = 0;
 context.subrelids = subrelids;




 query_or_expression_tree_walker(node,
         substitute_phv_relids_walker,
         (void *) &context,
         0);
}
