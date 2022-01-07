
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * scratch_ctx; } ;
typedef TYPE_1__ PLyExecutionContext ;
typedef int * MemoryContext ;


 int ALLOCSET_DEFAULT_SIZES ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int TopTransactionContext ;

MemoryContext
PLy_get_scratch_context(PLyExecutionContext *context)
{




 if (context->scratch_ctx == ((void*)0))
  context->scratch_ctx =
   AllocSetContextCreate(TopTransactionContext,
          "PL/Python scratch context",
          ALLOCSET_DEFAULT_SIZES);
 return context->scratch_ctx;
}
