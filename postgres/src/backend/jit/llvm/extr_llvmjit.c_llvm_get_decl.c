
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LLVMValueRef ;
typedef int LLVMModuleRef ;


 scalar_t__ LLVMAddFunction (int ,int ,int ) ;
 int LLVMGetElementType (int ) ;
 scalar_t__ LLVMGetNamedFunction (int ,int ) ;
 int LLVMGetValueName (scalar_t__) ;
 int LLVMTypeOf (scalar_t__) ;
 int llvm_copy_attributes (scalar_t__,scalar_t__) ;

LLVMValueRef
llvm_get_decl(LLVMModuleRef mod, LLVMValueRef v_src)
{
 LLVMValueRef v_fn;


 v_fn = LLVMGetNamedFunction(mod, LLVMGetValueName(v_src));
 if (v_fn)
  return v_fn;

 v_fn = LLVMAddFunction(mod,
         LLVMGetValueName(v_src),
         LLVMGetElementType(LLVMTypeOf(v_src)));
 llvm_copy_attributes(v_src, v_fn);

 return v_fn;
}
