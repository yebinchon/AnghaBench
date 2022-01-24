#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ ExprState ;
typedef  int /*<<< orphan*/  ExprContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EEO_FLAG_IS_QUAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 

bool
FUNC3(ExprState *state, ExprContext *econtext)
{
	Datum		ret;
	bool		isnull;

	/* short-circuit (here and in ExecInitCheck) for empty restriction list */
	if (state == NULL)
		return true;

	/* verify that expression was not compiled using ExecInitQual */
	FUNC0(!(state->flags & EEO_FLAG_IS_QUAL));

	ret = FUNC2(state, econtext, &isnull);

	if (isnull)
		return true;

	return FUNC1(ret);
}