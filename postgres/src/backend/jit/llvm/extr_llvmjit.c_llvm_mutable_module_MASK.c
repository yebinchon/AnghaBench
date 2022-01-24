#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int compiled; scalar_t__ module; scalar_t__ module_generation; } ;
typedef  scalar_t__ LLVMModuleRef ;
typedef  TYPE_1__ LLVMJitContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  llvm_generation ; 
 int /*<<< orphan*/  llvm_layout ; 
 int /*<<< orphan*/  llvm_triple ; 

LLVMModuleRef
FUNC4(LLVMJitContext *context)
{
	FUNC3();

	/*
	 * If there's no in-progress module, create a new one.
	 */
	if (!context->module)
	{
		context->compiled = false;
		context->module_generation = llvm_generation++;
		context->module = FUNC0("pg");
		FUNC2(context->module, llvm_triple);
		FUNC1(context->module, llvm_layout);
	}

	return context->module;
}