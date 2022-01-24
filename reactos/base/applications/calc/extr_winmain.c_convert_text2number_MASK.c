#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  calc_number_t ;
struct TYPE_2__ {scalar_t__ buffer; scalar_t__ ptr; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__ calc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(calc_number_t *a)
{
    /* if the screen output buffer is empty, then */
    /* the operand is taken from the last input */
    if (calc.buffer == calc.ptr) {
        /* if pushed valued is ZERO then we should grab it */
        if (!FUNC1(calc.buffer, FUNC0("0.")) ||
            !FUNC1(calc.buffer, FUNC0("0")))
            /* this zero is good for both integer and decimal */
            FUNC4(a);
        else
            FUNC3(a, &calc.code);
        return;
    }
    /* ZERO is the default value for all numeric bases */
    FUNC4(a);
    FUNC2(a);
}