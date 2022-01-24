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
typedef  scalar_t__ LLVMTypeRef ;
typedef  int /*<<< orphan*/  LLVMModuleRef ;
typedef  int /*<<< orphan*/  LLVMBuilderRef ;
typedef  int /*<<< orphan*/  ExprEvalStep ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  StructExprContext ; 
 int /*<<< orphan*/  StructExprEvalStep ; 
 int /*<<< orphan*/  StructExprState ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC8(LLVMBuilderRef b, LLVMModuleRef mod, const char *funcname,
				LLVMValueRef v_state, LLVMValueRef v_econtext,
				ExprEvalStep *op)
{
	LLVMTypeRef sig;
	LLVMValueRef v_fn;
	LLVMTypeRef param_types[3];
	LLVMValueRef params[3];

	v_fn = FUNC3(mod, funcname);
	if (!v_fn)
	{
		param_types[0] = FUNC5(StructExprState);
		param_types[1] = FUNC5(StructExprEvalStep);
		param_types[2] = FUNC5(StructExprContext);

		sig = FUNC2(FUNC4(),
							   param_types, FUNC7(param_types),
							   false);
		v_fn = FUNC0(mod, funcname, sig);
	}

	params[0] = v_state;
	params[1] = FUNC6(op, FUNC5(StructExprEvalStep));
	params[2] = v_econtext;

	FUNC1(b,
				  v_fn,
				  params, FUNC7(params), "");
}