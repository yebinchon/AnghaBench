
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {int module; TYPE_1__ base; } ;
typedef int * LLVMValueRef ;
typedef int LLVMPassManagerRef ;
typedef int LLVMPassManagerBuilderRef ;
typedef int LLVMModuleRef ;
typedef TYPE_2__ LLVMJitContext ;


 int LLVMAddAlwaysInlinerPass (int ) ;
 int LLVMAddFunctionInliningPass (int ) ;
 int LLVMAddPromoteMemoryToRegisterPass (int ) ;
 int LLVMCreateFunctionPassManagerForModule (int ) ;
 int LLVMCreatePassManager () ;
 int LLVMDisposePassManager (int ) ;
 int LLVMFinalizeFunctionPassManager (int ) ;
 int * LLVMGetFirstFunction (int ) ;
 int * LLVMGetNextFunction (int *) ;
 int LLVMInitializeFunctionPassManager (int ) ;
 int LLVMPassManagerBuilderCreate () ;
 int LLVMPassManagerBuilderDispose (int ) ;
 int LLVMPassManagerBuilderPopulateFunctionPassManager (int ,int ) ;
 int LLVMPassManagerBuilderPopulateModulePassManager (int ,int ) ;
 int LLVMPassManagerBuilderSetOptLevel (int ,int) ;
 int LLVMPassManagerBuilderUseInlinerWithThreshold (int ,int) ;
 int LLVMRunFunctionPassManager (int ,int *) ;
 int LLVMRunPassManager (int ,int ) ;
 int PGJIT_INLINE ;
 int PGJIT_OPT3 ;

__attribute__((used)) static void
llvm_optimize_module(LLVMJitContext *context, LLVMModuleRef module)
{
 LLVMPassManagerBuilderRef llvm_pmb;
 LLVMPassManagerRef llvm_mpm;
 LLVMPassManagerRef llvm_fpm;
 LLVMValueRef func;
 int compile_optlevel;

 if (context->base.flags & PGJIT_OPT3)
  compile_optlevel = 3;
 else
  compile_optlevel = 0;






 llvm_pmb = LLVMPassManagerBuilderCreate();
 LLVMPassManagerBuilderSetOptLevel(llvm_pmb, compile_optlevel);
 llvm_fpm = LLVMCreateFunctionPassManagerForModule(module);

 if (context->base.flags & PGJIT_OPT3)
 {

  LLVMPassManagerBuilderUseInlinerWithThreshold(llvm_pmb, 512);
 }
 else
 {

  LLVMAddPromoteMemoryToRegisterPass(llvm_fpm);
 }

 LLVMPassManagerBuilderPopulateFunctionPassManager(llvm_pmb, llvm_fpm);





 LLVMInitializeFunctionPassManager(llvm_fpm);
 for (func = LLVMGetFirstFunction(context->module);
   func != ((void*)0);
   func = LLVMGetNextFunction(func))
  LLVMRunFunctionPassManager(llvm_fpm, func);
 LLVMFinalizeFunctionPassManager(llvm_fpm);
 LLVMDisposePassManager(llvm_fpm);





 llvm_mpm = LLVMCreatePassManager();
 LLVMPassManagerBuilderPopulateModulePassManager(llvm_pmb,
             llvm_mpm);

 if (!(context->base.flags & PGJIT_OPT3))
  LLVMAddAlwaysInlinerPass(llvm_mpm);

 if (context->base.flags & PGJIT_INLINE
  && !(context->base.flags & PGJIT_OPT3))
  LLVMAddFunctionInliningPass(llvm_mpm);
 LLVMRunPassManager(llvm_mpm, context->module);
 LLVMDisposePassManager(llvm_mpm);

 LLVMPassManagerBuilderDispose(llvm_pmb);
}
