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
typedef  scalar_t__ LLVMValueRef ;
typedef  int /*<<< orphan*/  LLVMModuleRef ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

LLVMValueRef
FUNC6(LLVMModuleRef mod, LLVMValueRef v_src)
{
	LLVMValueRef v_fn;

	/* don't repeatedly add function */
	v_fn = FUNC2(mod, FUNC3(v_src));
	if (v_fn)
		return v_fn;

	v_fn = FUNC0(mod,
						   FUNC3(v_src),
						   FUNC1(FUNC4(v_src)));
	FUNC5(v_src, v_fn);

	return v_fn;
}