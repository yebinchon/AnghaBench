
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char max_hazard; int safe_param_ids; int max_interesting; } ;
typedef TYPE_1__ max_parallel_hazard_context ;
typedef int Query ;
typedef int Node ;


 int NIL ;
 char PROPARALLEL_SAFE ;
 int PROPARALLEL_UNSAFE ;
 int max_parallel_hazard_walker (int *,TYPE_1__*) ;

char
max_parallel_hazard(Query *parse)
{
 max_parallel_hazard_context context;

 context.max_hazard = PROPARALLEL_SAFE;
 context.max_interesting = PROPARALLEL_UNSAFE;
 context.safe_param_ids = NIL;
 (void) max_parallel_hazard_walker((Node *) parse, &context);
 return context.max_hazard;
}
