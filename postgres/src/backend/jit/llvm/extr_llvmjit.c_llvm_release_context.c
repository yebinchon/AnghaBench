
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ handles; int * module; } ;
struct TYPE_4__ {int orc_handle; int stack; } ;
typedef TYPE_1__ LLVMJitHandle ;
typedef TYPE_2__ LLVMJitContext ;
typedef int JitContext ;


 int LLVMDisposeModule (int *) ;
 int LLVMOrcRemoveModule (int ,int ) ;
 scalar_t__ NIL ;
 scalar_t__ linitial (scalar_t__) ;
 scalar_t__ list_delete_first (scalar_t__) ;
 int llvm_enter_fatal_on_oom () ;
 int pfree (TYPE_1__*) ;
 int proc_exit_inprogress ;

__attribute__((used)) static void
llvm_release_context(JitContext *context)
{
 LLVMJitContext *llvm_context = (LLVMJitContext *) context;

 llvm_enter_fatal_on_oom();






 if (!proc_exit_inprogress)
 {
  if (llvm_context->module)
  {
   LLVMDisposeModule(llvm_context->module);
   llvm_context->module = ((void*)0);
  }

  while (llvm_context->handles != NIL)
  {
   LLVMJitHandle *jit_handle;

   jit_handle = (LLVMJitHandle *) linitial(llvm_context->handles);
   llvm_context->handles = list_delete_first(llvm_context->handles);

   LLVMOrcRemoveModule(jit_handle->stack, jit_handle->orc_handle);
   pfree(jit_handle);
  }
 }
}
