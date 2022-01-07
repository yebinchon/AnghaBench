
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* addrs; int rtables; } ;
typedef TYPE_1__ find_expr_references_context ;
struct TYPE_7__ {int numrefs; int refs; } ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int List ;
typedef int DependencyType ;


 int eliminate_duplicate_dependencies (TYPE_2__*) ;
 int find_expr_references_walker (int *,TYPE_1__*) ;
 int free_object_addresses (TYPE_2__*) ;
 int list_make1 (int *) ;
 TYPE_2__* new_object_addresses () ;
 int recordMultipleDependencies (int const*,int ,int ,int ) ;

void
recordDependencyOnExpr(const ObjectAddress *depender,
        Node *expr, List *rtable,
        DependencyType behavior)
{
 find_expr_references_context context;

 context.addrs = new_object_addresses();


 context.rtables = list_make1(rtable);


 find_expr_references_walker(expr, &context);


 eliminate_duplicate_dependencies(context.addrs);


 recordMultipleDependencies(depender,
          context.addrs->refs, context.addrs->numrefs,
          behavior);

 free_object_addresses(context.addrs);
}
