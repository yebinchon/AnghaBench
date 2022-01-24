#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* flinfo; } ;
struct TYPE_4__ {char* fn_oid; int /*<<< orphan*/  fn_addr; } ;
typedef  scalar_t__ LLVMValueRef ;
typedef  int /*<<< orphan*/  LLVMModuleRef ;
typedef  int /*<<< orphan*/  LLVMJitContext ;
typedef  int /*<<< orphan*/  LLVMBuilderRef ;
typedef  TYPE_2__* FunctionCallInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TypePGFunction ; 
 int /*<<< orphan*/  FUNC8 (char*,char**,char**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,char*,...) ; 

LLVMValueRef
FUNC11(LLVMJitContext *context,
						LLVMBuilderRef builder,
						LLVMModuleRef mod,
						FunctionCallInfo fcinfo)
{
	char	   *modname;
	char	   *basename;
	char	   *funcname;

	LLVMValueRef v_fn;

	FUNC8(fcinfo->flinfo->fn_oid, &modname, &basename);

	if (modname != NULL && basename != NULL)
	{
		/* external function in loadable library */
		funcname = FUNC10("pgextern.%s.%s", modname, basename);
	}
	else if (basename != NULL)
	{
		/* internal function */
		funcname = FUNC10("%s", basename);
	}
	else
	{
		/*
		 * Function we don't know to handle, return pointer. We do so by
		 * creating a global constant containing a pointer to the function.
		 * Makes IR more readable.
		 */
		LLVMValueRef v_fn_addr;

		funcname = FUNC10("pgoidextern.%u",
							fcinfo->flinfo->fn_oid);
		v_fn = FUNC5(mod, funcname);
		if (v_fn != 0)
			return FUNC2(builder, v_fn, "");

		v_fn_addr = FUNC9(fcinfo->flinfo->fn_addr, TypePGFunction);

		v_fn = FUNC1(mod, TypePGFunction, funcname);
		FUNC7(v_fn, v_fn_addr);
		FUNC6(v_fn, true);

		return FUNC2(builder, v_fn, "");
	}

	/* check if function already has been added */
	v_fn = FUNC4(mod, funcname);
	if (v_fn != 0)
		return v_fn;

	v_fn = FUNC0(mod, funcname, FUNC3(TypePGFunction));

	return v_fn;
}