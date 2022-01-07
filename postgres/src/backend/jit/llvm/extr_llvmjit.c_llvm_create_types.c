
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LLVMModuleRef ;
typedef int LLVMMemoryBufferRef ;


 void* AttributeTemplate ;
 int ERROR ;
 void* FuncExecAggInitGroup ;
 void* FuncExecAggTransReparent ;
 void* FuncExecEvalSubscriptingRef ;
 void* FuncExecEvalSysVar ;
 void* FuncMakeExpandedObjectReadOnlyInternal ;
 void* FuncSlotGetmissingattrs ;
 void* FuncSlotGetsomeattrsInt ;
 void* FuncStrlen ;
 void* FuncVarsizeAny ;
 scalar_t__ LLVMCreateMemoryBufferWithContentsOfFile (char*,int *,char**) ;
 int LLVMDisposeMemoryBuffer (int ) ;
 int LLVMGetDataLayoutStr (int *) ;
 void* LLVMGetNamedFunction (int *,char*) ;
 int LLVMGetTarget (int *) ;
 scalar_t__ LLVMParseBitcode2 (int ,int **) ;
 int MAXPGPATH ;
 void* StructAggState ;
 void* StructAggStatePerGroupData ;
 void* StructAggStatePerTransData ;
 void* StructExprContext ;
 void* StructExprEvalStep ;
 void* StructExprState ;
 void* StructFunctionCallInfoData ;
 void* StructHeapTupleData ;
 void* StructHeapTupleTableSlot ;
 void* StructMemoryContextData ;
 void* StructMinimalTupleTableSlot ;
 void* StructNullableDatum ;
 void* StructTupleDescData ;
 void* StructTupleTableSlot ;
 void* TypePGFunction ;
 int TypeParamBool ;
 void* TypeSizeT ;
 void* TypeStorageBool ;
 int elog (int ,char*,char*,...) ;
 void* llvm_layout ;
 void* llvm_triple ;
 int load_return_type (int *,char*) ;
 void* load_type (int *,char*) ;
 char* pkglib_path ;
 void* pstrdup (int ) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static void
llvm_create_types(void)
{
 char path[MAXPGPATH];
 LLVMMemoryBufferRef buf;
 char *msg;
 LLVMModuleRef mod = ((void*)0);

 snprintf(path, MAXPGPATH, "%s/%s", pkglib_path, "llvmjit_types.bc");


 if (LLVMCreateMemoryBufferWithContentsOfFile(path, &buf, &msg))
 {
  elog(ERROR, "LLVMCreateMemoryBufferWithContentsOfFile(%s) failed: %s",
    path, msg);
 }


 if (LLVMParseBitcode2(buf, &mod))
 {
  elog(ERROR, "LLVMParseBitcode2 of %s failed", path);
 }
 LLVMDisposeMemoryBuffer(buf);





 llvm_triple = pstrdup(LLVMGetTarget(mod));
 llvm_layout = pstrdup(LLVMGetDataLayoutStr(mod));

 TypeSizeT = load_type(mod, "TypeSizeT");
 TypeParamBool = load_return_type(mod, "FunctionReturningBool");
 TypeStorageBool = load_type(mod, "TypeStorageBool");
 TypePGFunction = load_type(mod, "TypePGFunction");
 StructNullableDatum = load_type(mod, "StructNullableDatum");
 StructExprContext = load_type(mod, "StructExprContext");
 StructExprEvalStep = load_type(mod, "StructExprEvalStep");
 StructExprState = load_type(mod, "StructExprState");
 StructFunctionCallInfoData = load_type(mod, "StructFunctionCallInfoData");
 StructMemoryContextData = load_type(mod, "StructMemoryContextData");
 StructTupleTableSlot = load_type(mod, "StructTupleTableSlot");
 StructHeapTupleTableSlot = load_type(mod, "StructHeapTupleTableSlot");
 StructMinimalTupleTableSlot = load_type(mod, "StructMinimalTupleTableSlot");
 StructHeapTupleData = load_type(mod, "StructHeapTupleData");
 StructTupleDescData = load_type(mod, "StructTupleDescData");
 StructAggState = load_type(mod, "StructAggState");
 StructAggStatePerGroupData = load_type(mod, "StructAggStatePerGroupData");
 StructAggStatePerTransData = load_type(mod, "StructAggStatePerTransData");

 AttributeTemplate = LLVMGetNamedFunction(mod, "AttributeTemplate");
 FuncStrlen = LLVMGetNamedFunction(mod, "strlen");
 FuncVarsizeAny = LLVMGetNamedFunction(mod, "varsize_any");
 FuncSlotGetsomeattrsInt = LLVMGetNamedFunction(mod, "slot_getsomeattrs_int");
 FuncSlotGetmissingattrs = LLVMGetNamedFunction(mod, "slot_getmissingattrs");
 FuncMakeExpandedObjectReadOnlyInternal = LLVMGetNamedFunction(mod, "MakeExpandedObjectReadOnlyInternal");
 FuncExecEvalSubscriptingRef = LLVMGetNamedFunction(mod, "ExecEvalSubscriptingRef");
 FuncExecEvalSysVar = LLVMGetNamedFunction(mod, "ExecEvalSysVar");
 FuncExecAggTransReparent = LLVMGetNamedFunction(mod, "ExecAggTransReparent");
 FuncExecAggInitGroup = LLVMGetNamedFunction(mod, "ExecAggInitGroup");






 return;
}
