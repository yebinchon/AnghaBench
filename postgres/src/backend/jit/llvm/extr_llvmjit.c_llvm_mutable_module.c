
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int compiled; scalar_t__ module; scalar_t__ module_generation; } ;
typedef scalar_t__ LLVMModuleRef ;
typedef TYPE_1__ LLVMJitContext ;


 scalar_t__ LLVMModuleCreateWithName (char*) ;
 int LLVMSetDataLayout (scalar_t__,int ) ;
 int LLVMSetTarget (scalar_t__,int ) ;
 int llvm_assert_in_fatal_section () ;
 int llvm_generation ;
 int llvm_layout ;
 int llvm_triple ;

LLVMModuleRef
llvm_mutable_module(LLVMJitContext *context)
{
 llvm_assert_in_fatal_section();




 if (!context->module)
 {
  context->compiled = 0;
  context->module_generation = llvm_generation++;
  context->module = LLVMModuleCreateWithName("pg");
  LLVMSetTarget(context->module, llvm_triple);
  LLVMSetDataLayout(context->module, llvm_layout);
 }

 return context->module;
}
