
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LLVMValueRef ;
typedef scalar_t__ LLVMTypeRef ;
typedef int LLVMModuleRef ;
typedef int LLVMBuilderRef ;
typedef int ExprEvalStep ;


 scalar_t__ LLVMAddFunction (int ,char const*,scalar_t__) ;
 int LLVMBuildCall (int ,scalar_t__,scalar_t__*,int ,char*) ;
 scalar_t__ LLVMFunctionType (int ,scalar_t__*,int ,int) ;
 scalar_t__ LLVMGetNamedFunction (int ,char const*) ;
 int LLVMVoidType () ;
 int StructExprContext ;
 int StructExprEvalStep ;
 int StructExprState ;
 scalar_t__ l_ptr (int ) ;
 scalar_t__ l_ptr_const (int *,scalar_t__) ;
 int lengthof (scalar_t__*) ;

__attribute__((used)) static void
build_EvalXFunc(LLVMBuilderRef b, LLVMModuleRef mod, const char *funcname,
    LLVMValueRef v_state, LLVMValueRef v_econtext,
    ExprEvalStep *op)
{
 LLVMTypeRef sig;
 LLVMValueRef v_fn;
 LLVMTypeRef param_types[3];
 LLVMValueRef params[3];

 v_fn = LLVMGetNamedFunction(mod, funcname);
 if (!v_fn)
 {
  param_types[0] = l_ptr(StructExprState);
  param_types[1] = l_ptr(StructExprEvalStep);
  param_types[2] = l_ptr(StructExprContext);

  sig = LLVMFunctionType(LLVMVoidType(),
          param_types, lengthof(param_types),
          0);
  v_fn = LLVMAddFunction(mod, funcname, sig);
 }

 params[0] = v_state;
 params[1] = l_ptr_const(op, l_ptr(StructExprEvalStep));
 params[2] = v_econtext;

 LLVMBuildCall(b,
      v_fn,
      params, lengthof(params), "");
}
