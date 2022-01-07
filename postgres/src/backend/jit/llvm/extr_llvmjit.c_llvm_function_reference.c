
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* flinfo; } ;
struct TYPE_4__ {char* fn_oid; int fn_addr; } ;
typedef scalar_t__ LLVMValueRef ;
typedef int LLVMModuleRef ;
typedef int LLVMJitContext ;
typedef int LLVMBuilderRef ;
typedef TYPE_2__* FunctionCallInfo ;


 scalar_t__ LLVMAddFunction (int ,char*,int ) ;
 scalar_t__ LLVMAddGlobal (int ,int ,char*) ;
 scalar_t__ LLVMBuildLoad (int ,scalar_t__,char*) ;
 int LLVMGetElementType (int ) ;
 scalar_t__ LLVMGetNamedFunction (int ,char*) ;
 scalar_t__ LLVMGetNamedGlobal (int ,char*) ;
 int LLVMSetGlobalConstant (scalar_t__,int) ;
 int LLVMSetInitializer (scalar_t__,scalar_t__) ;
 int TypePGFunction ;
 int fmgr_symbol (char*,char**,char**) ;
 scalar_t__ l_ptr_const (int ,int ) ;
 char* psprintf (char*,char*,...) ;

LLVMValueRef
llvm_function_reference(LLVMJitContext *context,
      LLVMBuilderRef builder,
      LLVMModuleRef mod,
      FunctionCallInfo fcinfo)
{
 char *modname;
 char *basename;
 char *funcname;

 LLVMValueRef v_fn;

 fmgr_symbol(fcinfo->flinfo->fn_oid, &modname, &basename);

 if (modname != ((void*)0) && basename != ((void*)0))
 {

  funcname = psprintf("pgextern.%s.%s", modname, basename);
 }
 else if (basename != ((void*)0))
 {

  funcname = psprintf("%s", basename);
 }
 else
 {





  LLVMValueRef v_fn_addr;

  funcname = psprintf("pgoidextern.%u",
       fcinfo->flinfo->fn_oid);
  v_fn = LLVMGetNamedGlobal(mod, funcname);
  if (v_fn != 0)
   return LLVMBuildLoad(builder, v_fn, "");

  v_fn_addr = l_ptr_const(fcinfo->flinfo->fn_addr, TypePGFunction);

  v_fn = LLVMAddGlobal(mod, TypePGFunction, funcname);
  LLVMSetInitializer(v_fn, v_fn_addr);
  LLVMSetGlobalConstant(v_fn, 1);

  return LLVMBuildLoad(builder, v_fn, "");
 }


 v_fn = LLVMGetNamedFunction(mod, funcname);
 if (v_fn != 0)
  return v_fn;

 v_fn = LLVMAddFunction(mod, funcname, LLVMGetElementType(TypePGFunction));

 return v_fn;
}
