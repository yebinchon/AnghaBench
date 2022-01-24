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
struct TYPE_3__ {int steps_alloc; int steps_len; int /*<<< orphan*/ * steps; } ;
typedef  TYPE_1__ ExprState ;
typedef  int /*<<< orphan*/  ExprEvalStep ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

void
FUNC3(ExprState *es, const ExprEvalStep *s)
{
	if (es->steps_alloc == 0)
	{
		es->steps_alloc = 16;
		es->steps = FUNC1(sizeof(ExprEvalStep) * es->steps_alloc);
	}
	else if (es->steps_alloc == es->steps_len)
	{
		es->steps_alloc *= 2;
		es->steps = FUNC2(es->steps,
							 sizeof(ExprEvalStep) * es->steps_alloc);
	}

	FUNC0(&es->steps[es->steps_len++], s, sizeof(ExprEvalStep));
}