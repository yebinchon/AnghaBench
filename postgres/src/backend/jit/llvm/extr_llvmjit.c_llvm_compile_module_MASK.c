#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_8__ {int /*<<< orphan*/  emission_counter; int /*<<< orphan*/  optimization_counter; int /*<<< orphan*/  inlining_counter; } ;
struct TYPE_9__ {int flags; TYPE_1__ instr; } ;
struct TYPE_11__ {int compiled; TYPE_2__ base; int /*<<< orphan*/  handles; int /*<<< orphan*/ * module; int /*<<< orphan*/  module_generation; } ;
struct TYPE_10__ {scalar_t__ orc_handle; int /*<<< orphan*/  stack; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  LLVMSharedModuleRef ;
typedef  scalar_t__ LLVMOrcModuleHandle ;
typedef  int /*<<< orphan*/  LLVMOrcJITStackRef ;
typedef  TYPE_3__ LLVMJitHandle ;
typedef  TYPE_4__ LLVMJitContext ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyProcPid ; 
 int PGJIT_INLINE ; 
 int PGJIT_OPT3 ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jit_dump_bitcode ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  llvm_opt0_orc ; 
 int /*<<< orphan*/  llvm_opt3_orc ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  llvm_resolve_symbol ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 char* FUNC19 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20(LLVMJitContext *context)
{
	LLVMOrcModuleHandle orc_handle;
	MemoryContext oldcontext;
	static LLVMOrcJITStackRef compile_orc;
	instr_time	starttime;
	instr_time	endtime;

	if (context->base.flags & PGJIT_OPT3)
		compile_orc = llvm_opt3_orc;
	else
		compile_orc = llvm_opt0_orc;

	/* perform inlining */
	if (context->base.flags & PGJIT_INLINE)
	{
		FUNC2(starttime);
		FUNC15(context->module);
		FUNC2(endtime);
		FUNC0(context->base.instr.inlining_counter,
							  endtime, starttime);
	}

	if (jit_dump_bitcode)
	{
		char	   *filename;

		filename = FUNC19("%u.%zu.bc",
							MyProcPid,
							context->module_generation);
		FUNC7(context->module, filename);
		FUNC18(filename);
	}


	/* optimize according to the chosen optimization settings */
	FUNC2(starttime);
	FUNC16(context, context->module);
	FUNC2(endtime);
	FUNC0(context->base.instr.optimization_counter,
						  endtime, starttime);

	if (jit_dump_bitcode)
	{
		char	   *filename;

		filename = FUNC19("%u.%zu.optimized.bc",
							MyProcPid,
							context->module_generation);
		FUNC7(context->module, filename);
		FUNC18(filename);
	}

	/*
	 * Emit the code. Note that this can, depending on the optimization
	 * settings, take noticeable resources as code emission executes low-level
	 * instruction combining/selection passes etc. Without optimization a
	 * faster instruction selection mechanism is used.
	 */
	FUNC2(starttime);
#if LLVM_VERSION_MAJOR > 6
	{
		if (LLVMOrcAddEagerlyCompiledIR(compile_orc, &orc_handle, context->module,
										llvm_resolve_symbol, NULL))
		{
			elog(ERROR, "failed to JIT module");
		}

		/* LLVMOrcAddEagerlyCompiledIR takes ownership of the module */
	}
#elif LLVM_VERSION_MAJOR > 4
	{
		LLVMSharedModuleRef smod;

		smod = LLVMOrcMakeSharedModule(context->module);
		if (LLVMOrcAddEagerlyCompiledIR(compile_orc, &orc_handle, smod,
										llvm_resolve_symbol, NULL))
		{
			elog(ERROR, "failed to JIT module");
		}
		LLVMOrcDisposeSharedModuleRef(smod);
	}
#else							/* LLVM 4.0 and 3.9 */
	{
		orc_handle = FUNC4(compile_orc, context->module,
												 llvm_resolve_symbol, NULL);
		FUNC3(context->module);
	}
#endif
	FUNC2(endtime);
	FUNC0(context->base.instr.emission_counter,
						  endtime, starttime);

	context->module = NULL;
	context->compiled = true;

	/* remember emitted code for cleanup and lookups */
	oldcontext = FUNC8(TopMemoryContext);
	{
		LLVMJitHandle *handle;

		handle = (LLVMJitHandle *) FUNC17(sizeof(LLVMJitHandle));
		handle->stack = compile_orc;
		handle->orc_handle = orc_handle;

		context->handles = FUNC14(context->handles, handle);
	}
	FUNC8(oldcontext);

	FUNC10(DEBUG1,
			(FUNC13("time to inline: %.3fs, opt: %.3fs, emit: %.3fs",
					FUNC1(context->base.instr.inlining_counter),
					FUNC1(context->base.instr.optimization_counter),
					FUNC1(context->base.instr.emission_counter)),
			 FUNC12(true),
			 FUNC11(true)));
}