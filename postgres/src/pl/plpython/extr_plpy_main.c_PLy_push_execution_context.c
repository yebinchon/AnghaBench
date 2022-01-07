
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int * scratch_ctx; int * curr_proc; } ;
typedef TYPE_1__ PLyExecutionContext ;


 scalar_t__ MemoryContextAlloc (int ,int) ;
 TYPE_1__* PLy_execution_contexts ;
 int PortalContext ;
 int TopTransactionContext ;

__attribute__((used)) static PLyExecutionContext *
PLy_push_execution_context(bool atomic_context)
{
 PLyExecutionContext *context;


 context = (PLyExecutionContext *)
  MemoryContextAlloc(atomic_context ? TopTransactionContext : PortalContext,
         sizeof(PLyExecutionContext));
 context->curr_proc = ((void*)0);
 context->scratch_ctx = ((void*)0);
 context->next = PLy_execution_contexts;
 PLy_execution_contexts = context;
 return context;
}
