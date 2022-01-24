#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * LLVMModuleRef ;
typedef  int /*<<< orphan*/  LLVMMemoryBufferRef ;

/* Variables and functions */
 void* AttributeTemplate ; 
 int /*<<< orphan*/  ERROR ; 
 void* FuncExecAggInitGroup ; 
 void* FuncExecAggTransReparent ; 
 void* FuncExecEvalSubscriptingRef ; 
 void* FuncExecEvalSysVar ; 
 void* FuncMakeExpandedObjectReadOnlyInternal ; 
 void* FuncSlotGetmissingattrs ; 
 void* FuncSlotGetsomeattrsInt ; 
 void* FuncStrlen ; 
 void* FuncVarsizeAny ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
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
 int /*<<< orphan*/  TypeParamBool ; 
 void* TypeSizeT ; 
 void* TypeStorageBool ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,...) ; 
 void* llvm_layout ; 
 void* llvm_triple ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 char* pkglib_path ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC11(void)
{
	char		path[MAXPGPATH];
	LLVMMemoryBufferRef buf;
	char	   *msg;
	LLVMModuleRef mod = NULL;

	FUNC10(path, MAXPGPATH, "%s/%s", pkglib_path, "llvmjit_types.bc");

	/* open file */
	if (FUNC0(path, &buf, &msg))
	{
		FUNC6(ERROR, "LLVMCreateMemoryBufferWithContentsOfFile(%s) failed: %s",
			 path, msg);
	}

	/* eagerly load contents, going to need it all */
	if (FUNC5(buf, &mod))
	{
		FUNC6(ERROR, "LLVMParseBitcode2 of %s failed", path);
	}
	FUNC1(buf);

	/*
	 * Load triple & layout from clang emitted file so we're guaranteed to be
	 * compatible.
	 */
	llvm_triple = FUNC9(FUNC4(mod));
	llvm_layout = FUNC9(FUNC2(mod));

	TypeSizeT = FUNC8(mod, "TypeSizeT");
	TypeParamBool = FUNC7(mod, "FunctionReturningBool");
	TypeStorageBool = FUNC8(mod, "TypeStorageBool");
	TypePGFunction = FUNC8(mod, "TypePGFunction");
	StructNullableDatum = FUNC8(mod, "StructNullableDatum");
	StructExprContext = FUNC8(mod, "StructExprContext");
	StructExprEvalStep = FUNC8(mod, "StructExprEvalStep");
	StructExprState = FUNC8(mod, "StructExprState");
	StructFunctionCallInfoData = FUNC8(mod, "StructFunctionCallInfoData");
	StructMemoryContextData = FUNC8(mod, "StructMemoryContextData");
	StructTupleTableSlot = FUNC8(mod, "StructTupleTableSlot");
	StructHeapTupleTableSlot = FUNC8(mod, "StructHeapTupleTableSlot");
	StructMinimalTupleTableSlot = FUNC8(mod, "StructMinimalTupleTableSlot");
	StructHeapTupleData = FUNC8(mod, "StructHeapTupleData");
	StructTupleDescData = FUNC8(mod, "StructTupleDescData");
	StructAggState = FUNC8(mod, "StructAggState");
	StructAggStatePerGroupData = FUNC8(mod, "StructAggStatePerGroupData");
	StructAggStatePerTransData = FUNC8(mod, "StructAggStatePerTransData");

	AttributeTemplate = FUNC3(mod, "AttributeTemplate");
	FuncStrlen = FUNC3(mod, "strlen");
	FuncVarsizeAny = FUNC3(mod, "varsize_any");
	FuncSlotGetsomeattrsInt = FUNC3(mod, "slot_getsomeattrs_int");
	FuncSlotGetmissingattrs = FUNC3(mod, "slot_getmissingattrs");
	FuncMakeExpandedObjectReadOnlyInternal = FUNC3(mod, "MakeExpandedObjectReadOnlyInternal");
	FuncExecEvalSubscriptingRef = FUNC3(mod, "ExecEvalSubscriptingRef");
	FuncExecEvalSysVar = FUNC3(mod, "ExecEvalSysVar");
	FuncExecAggTransReparent = FUNC3(mod, "ExecAggTransReparent");
	FuncExecAggInitGroup = FUNC3(mod, "ExecAggInitGroup");

	/*
	 * Leave the module alive, otherwise references to function would be
	 * dangling.
	 */

	return;
}