
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nargs; int* usecounts; int * args; } ;
typedef TYPE_1__ substitute_actual_parameters_context ;
typedef int Node ;
typedef int List ;


 int * substitute_actual_parameters_mutator (int *,TYPE_1__*) ;

__attribute__((used)) static Node *
substitute_actual_parameters(Node *expr, int nargs, List *args,
        int *usecounts)
{
 substitute_actual_parameters_context context;

 context.nargs = nargs;
 context.args = args;
 context.usecounts = usecounts;

 return substitute_actual_parameters_mutator(expr, &context);
}
