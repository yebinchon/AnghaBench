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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  args; } ;
struct TYPE_8__ {TYPE_1__ opexpr; struct TYPE_8__* elem_nulls; struct TYPE_8__* elem_values; } ;
struct TYPE_7__ {scalar_t__ state; } ;
typedef  TYPE_2__* PredIterInfo ;
typedef  TYPE_3__ ArrayConstIterState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC2(PredIterInfo info)
{
	ArrayConstIterState *state = (ArrayConstIterState *) info->state;

	FUNC1(state->elem_values);
	FUNC1(state->elem_nulls);
	FUNC0(state->opexpr.args);
	FUNC1(state);
}