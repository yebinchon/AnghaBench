
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LLVMValueRef ;
typedef int LLVMTypeRef ;
typedef int LLVMModuleRef ;


 int Assert (int ) ;
 scalar_t__ LLVMAddFunction (int ,char const*,int ) ;
 int LLVMCCallConv ;
 int LLVMFunctionType (int ,int *,int ,int) ;
 int LLVMGetIntrinsicID (scalar_t__) ;
 scalar_t__ LLVMGetNamedFunction (int ,char const*) ;
 int LLVMInt64Type () ;
 int LLVMInt8Type () ;
 int LLVMSetFunctionCallConv (scalar_t__,int ) ;
 int LLVMVoidType () ;
 int l_ptr (int ) ;
 int lengthof (int *) ;

__attribute__((used)) static LLVMValueRef
create_LifetimeEnd(LLVMModuleRef mod)
{
 LLVMTypeRef sig;
 LLVMValueRef fn;
 LLVMTypeRef param_types[2];



 const char *nm = "llvm.lifetime.end";




 fn = LLVMGetNamedFunction(mod, nm);
 if (fn)
  return fn;

 param_types[0] = LLVMInt64Type();
 param_types[1] = l_ptr(LLVMInt8Type());

 sig = LLVMFunctionType(LLVMVoidType(),
         param_types, lengthof(param_types),
         0);
 fn = LLVMAddFunction(mod, nm, sig);

 LLVMSetFunctionCallConv(fn, LLVMCCallConv);

 Assert(LLVMGetIntrinsicID(fn));

 return fn;
}
