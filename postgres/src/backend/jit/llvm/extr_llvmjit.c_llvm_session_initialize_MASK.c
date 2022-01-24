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
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  LLVMJITEventListenerRef ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  LLVMCodeGenLevelAggressive ; 
 int /*<<< orphan*/  LLVMCodeGenLevelNone ; 
 int /*<<< orphan*/  LLVMCodeModelJITDefault ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 () ; 
 char* FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LLVMRelocDefault ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ jit_debugging_support ; 
 scalar_t__ jit_profiling_support ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  llvm_opt0_orc ; 
 int /*<<< orphan*/  llvm_opt0_targetmachine ; 
 int /*<<< orphan*/  llvm_opt3_orc ; 
 int /*<<< orphan*/  llvm_opt3_targetmachine ; 
 int llvm_session_initialized ; 
 int /*<<< orphan*/  llvm_shutdown ; 
 int /*<<< orphan*/  llvm_targetref ; 
 int /*<<< orphan*/  llvm_triple ; 

__attribute__((used)) static void
FUNC17(void)
{
	MemoryContext oldcontext;
	char	   *error = NULL;
	char	   *cpu = NULL;
	char	   *features = NULL;

	if (llvm_session_initialized)
		return;

	oldcontext = FUNC13(TopMemoryContext);

	FUNC9();
	FUNC8();
	FUNC7();

	/*
	 * Synchronize types early, as that also includes inferring the target
	 * triple.
	 */
	FUNC16();

	if (FUNC6(llvm_triple, &llvm_targetref, &error) != 0)
	{
		FUNC15(FATAL, "failed to query triple %s\n", error);
	}

	/*
	 * We want the generated code to use all available features. Therefore
	 * grab the host CPU string and detect features of the current CPU. The
	 * latter is needed because some CPU architectures default to enabling
	 * features not all CPUs have (weird, huh).
	 */
	cpu = FUNC5();
	features = FUNC4();
	FUNC15(DEBUG2, "LLVMJIT detected CPU \"%s\", with features \"%s\"",
		 cpu, features);

	llvm_opt0_targetmachine =
		FUNC2(llvm_targetref, llvm_triple, cpu, features,
								LLVMCodeGenLevelNone,
								LLVMRelocDefault,
								LLVMCodeModelJITDefault);
	llvm_opt3_targetmachine =
		FUNC2(llvm_targetref, llvm_triple, cpu, features,
								LLVMCodeGenLevelAggressive,
								LLVMRelocDefault,
								LLVMCodeModelJITDefault);

	FUNC3(cpu);
	cpu = NULL;
	FUNC3(features);
	features = NULL;

	/* force symbols in main binary to be loaded */
	FUNC10(NULL);

	llvm_opt0_orc = FUNC11(llvm_opt0_targetmachine);
	llvm_opt3_orc = FUNC11(llvm_opt3_targetmachine);

#if defined(HAVE_DECL_LLVMCREATEGDBREGISTRATIONLISTENER) && HAVE_DECL_LLVMCREATEGDBREGISTRATIONLISTENER
	if (jit_debugging_support)
	{
		LLVMJITEventListenerRef l = LLVMCreateGDBRegistrationListener();

		LLVMOrcRegisterJITEventListener(llvm_opt0_orc, l);
		LLVMOrcRegisterJITEventListener(llvm_opt3_orc, l);
	}
#endif
#if defined(HAVE_DECL_LLVMCREATEPERFJITEVENTLISTENER) && HAVE_DECL_LLVMCREATEPERFJITEVENTLISTENER
	if (jit_profiling_support)
	{
		LLVMJITEventListenerRef l = LLVMCreatePerfJITEventListener();

		LLVMOrcRegisterJITEventListener(llvm_opt0_orc, l);
		LLVMOrcRegisterJITEventListener(llvm_opt3_orc, l);
	}
#endif

	FUNC14(llvm_shutdown, 0);

	llvm_session_initialized = true;

	FUNC13(oldcontext);
}