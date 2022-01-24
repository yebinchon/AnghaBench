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
typedef  scalar_t__ int8 ;
struct TYPE_3__ {scalar_t__ op; int /*<<< orphan*/  distance; } ;
typedef  int /*<<< orphan*/  TSQueryParserState ;
typedef  TYPE_1__ OperatorElement ;

/* Variables and functions */
 scalar_t__ OP_NOT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(TSQueryParserState state,
			 OperatorElement *stack, int *lenstack, int8 op)
{
	int			opPriority = FUNC0(op);

	while (*lenstack)
	{
		/* NOT is right associative unlike to others */
		if ((op != OP_NOT && opPriority > FUNC0(stack[*lenstack - 1].op)) ||
			(op == OP_NOT && opPriority >= FUNC0(stack[*lenstack - 1].op)))
			break;

		(*lenstack)--;
		FUNC1(state, stack[*lenstack].op,
					 stack[*lenstack].distance);
	}
}