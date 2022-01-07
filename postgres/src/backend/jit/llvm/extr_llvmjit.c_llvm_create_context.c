
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int resowner; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
typedef TYPE_2__ LLVMJitContext ;


 int CurrentResourceOwner ;
 TYPE_2__* MemoryContextAllocZero (int ,int) ;
 int PointerGetDatum (TYPE_2__*) ;
 int ResourceOwnerEnlargeJIT (int ) ;
 int ResourceOwnerRememberJIT (int ,int ) ;
 int TopMemoryContext ;
 int llvm_assert_in_fatal_section () ;
 int llvm_session_initialize () ;

LLVMJitContext *
llvm_create_context(int jitFlags)
{
 LLVMJitContext *context;

 llvm_assert_in_fatal_section();

 llvm_session_initialize();

 ResourceOwnerEnlargeJIT(CurrentResourceOwner);

 context = MemoryContextAllocZero(TopMemoryContext,
          sizeof(LLVMJitContext));
 context->base.flags = jitFlags;


 context->base.resowner = CurrentResourceOwner;
 ResourceOwnerRememberJIT(CurrentResourceOwner, PointerGetDatum(context));

 return context;
}
