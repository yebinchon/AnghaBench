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
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  defines; } ;
typedef  TYPE_1__ pp_def_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* pp_def_state ; 
 TYPE_1__* FUNC1 (int) ; 

int FUNC2(void)
{
    pp_def_state_t *state = FUNC1( sizeof(*state) );
    if(!state)
        return 1;

    FUNC0( state->defines, 0, sizeof(state->defines) );
    state->next = pp_def_state;
    pp_def_state = state;
    return 0;
}