
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ scratch_ctx; struct TYPE_4__* next; } ;
typedef TYPE_1__ PLyExecutionContext ;


 int ERROR ;
 int MemoryContextDelete (scalar_t__) ;
 TYPE_1__* PLy_execution_contexts ;
 int elog (int ,char*) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
PLy_pop_execution_context(void)
{
 PLyExecutionContext *context = PLy_execution_contexts;

 if (context == ((void*)0))
  elog(ERROR, "no Python function is currently executing");

 PLy_execution_contexts = context->next;

 if (context->scratch_ctx)
  MemoryContextDelete(context->scratch_ctx);
 pfree(context);
}
