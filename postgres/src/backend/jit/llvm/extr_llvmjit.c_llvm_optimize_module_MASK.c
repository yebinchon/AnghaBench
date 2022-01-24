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
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  module; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/ * LLVMValueRef ;
typedef  int /*<<< orphan*/  LLVMPassManagerRef ;
typedef  int /*<<< orphan*/  LLVMPassManagerBuilderRef ;
typedef  int /*<<< orphan*/  LLVMModuleRef ;
typedef  TYPE_2__ LLVMJitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PGJIT_INLINE ; 
 int PGJIT_OPT3 ; 

__attribute__((used)) static void
FUNC18(LLVMJitContext *context, LLVMModuleRef module)
{
	LLVMPassManagerBuilderRef llvm_pmb;
	LLVMPassManagerRef llvm_mpm;
	LLVMPassManagerRef llvm_fpm;
	LLVMValueRef func;
	int			compile_optlevel;

	if (context->base.flags & PGJIT_OPT3)
		compile_optlevel = 3;
	else
		compile_optlevel = 0;

	/*
	 * Have to create a new pass manager builder every pass through, as the
	 * inliner has some per-builder state. Otherwise one ends up only inlining
	 * a function the first time though.
	 */
	llvm_pmb = FUNC10();
	FUNC14(llvm_pmb, compile_optlevel);
	llvm_fpm = FUNC3(module);

	if (context->base.flags & PGJIT_OPT3)
	{
		/* TODO: Unscientifically determined threshold */
		FUNC15(llvm_pmb, 512);
	}
	else
	{
		/* we rely on mem2reg heavily, so emit even in the O0 case */
		FUNC2(llvm_fpm);
	}

	FUNC12(llvm_pmb, llvm_fpm);

	/*
	 * Do function level optimization. This could be moved to the point where
	 * functions are emitted, to reduce memory usage a bit.
	 */
	FUNC9(llvm_fpm);
	for (func = FUNC7(context->module);
		 func != NULL;
		 func = FUNC8(func))
		FUNC16(llvm_fpm, func);
	FUNC6(llvm_fpm);
	FUNC5(llvm_fpm);

	/*
	 * Perform module level optimization. We do so even in the non-optimized
	 * case, so always-inline functions etc get inlined. It's cheap enough.
	 */
	llvm_mpm = FUNC4();
	FUNC13(llvm_pmb,
													llvm_mpm);
	/* always use always-inliner pass */
	if (!(context->base.flags & PGJIT_OPT3))
		FUNC0(llvm_mpm);
	/* if doing inlining, but no expensive optimization, add inlining pass */
	if (context->base.flags & PGJIT_INLINE
		&& !(context->base.flags & PGJIT_OPT3))
		FUNC1(llvm_mpm);
	FUNC17(llvm_mpm, context->module);
	FUNC5(llvm_mpm);

	FUNC11(llvm_pmb);
}