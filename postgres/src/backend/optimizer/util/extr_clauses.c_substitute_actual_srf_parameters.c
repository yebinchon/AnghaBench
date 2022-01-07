
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nargs; int sublevels_up; int * args; } ;
typedef TYPE_1__ substitute_actual_srf_parameters_context ;
typedef int Query ;
typedef int List ;


 int * query_tree_mutator (int *,int ,TYPE_1__*,int ) ;
 int substitute_actual_srf_parameters_mutator ;

__attribute__((used)) static Query *
substitute_actual_srf_parameters(Query *expr, int nargs, List *args)
{
 substitute_actual_srf_parameters_context context;

 context.nargs = nargs;
 context.args = args;
 context.sublevels_up = 1;

 return query_tree_mutator(expr,
         substitute_actual_srf_parameters_mutator,
         &context,
         0);
}
