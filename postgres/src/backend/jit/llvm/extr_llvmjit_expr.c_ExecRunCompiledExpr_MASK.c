#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  funcname; int /*<<< orphan*/  context; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* evalfunc ) (TYPE_1__*,int /*<<< orphan*/ *,int*) ;TYPE_3__* evalfunc_private; } ;
typedef  int /*<<< orphan*/  (* ExprStateEvalFunc ) (TYPE_1__*,int /*<<< orphan*/ *,int*) ;
typedef  TYPE_1__ ExprState ;
typedef  int /*<<< orphan*/  ExprContext ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__ CompiledExprState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (TYPE_1__*,int /*<<< orphan*/ *,int*)) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static Datum
FUNC5(ExprState *state, ExprContext *econtext, bool *isNull)
{
	CompiledExprState *cstate = state->evalfunc_private;
	ExprStateEvalFunc func;

	FUNC1(state, econtext);

	FUNC2();
	func = (ExprStateEvalFunc) FUNC3(cstate->context,
												 cstate->funcname);
	FUNC4();
	FUNC0(func);

	/* remove indirection via this function for future calls */
	state->evalfunc = func;

	return func(state, econtext, isNull);
}