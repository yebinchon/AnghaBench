#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int result_tape; int* tp_tapenum; size_t destTape; } ;
typedef  TYPE_1__ Tuplesortstate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(Tuplesortstate *state)
{
	FUNC0(FUNC1(state));
	FUNC0(state->result_tape == -1);

	state->result_tape = state->tp_tapenum[state->destTape];
	FUNC2(state);
}