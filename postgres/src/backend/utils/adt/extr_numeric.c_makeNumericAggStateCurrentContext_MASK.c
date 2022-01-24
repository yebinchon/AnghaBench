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
struct TYPE_3__ {int calcSumX2; int /*<<< orphan*/  agg_context; } ;
typedef  TYPE_1__ NumericAggState ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static NumericAggState *
FUNC1(bool calcSumX2)
{
	NumericAggState *state;

	state = (NumericAggState *) FUNC0(sizeof(NumericAggState));
	state->calcSumX2 = calcSumX2;
	state->agg_context = CurrentMemoryContext;

	return state;
}