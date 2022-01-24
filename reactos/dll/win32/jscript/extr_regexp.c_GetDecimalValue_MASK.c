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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/ * cp; int /*<<< orphan*/ * cpend; } ;
typedef  TYPE_1__ CompilerState ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int OVERFLOW_VALUE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static UINT
FUNC3(WCHAR c, UINT max, UINT (*findMax)(CompilerState *state),
                CompilerState *state)
{
    UINT value = FUNC1(c);
    BOOL overflow = (value > max && (!findMax || value > findMax(state)));

    /* The following restriction allows simpler overflow checks. */
    FUNC2(max <= ((UINT)-1 - 9) / 10);
    while (state->cp < state->cpend) {
        c = *state->cp;
        if (!FUNC0(c))
            break;
        value = 10 * value + FUNC1(c);
        if (!overflow && value > max && (!findMax || value > findMax(state)))
            overflow = TRUE;
        ++state->cp;
    }
    return overflow ? OVERFLOW_VALUE : value;
}