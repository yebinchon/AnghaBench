#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  calc_number_t ;
struct TYPE_6__ {int /*<<< orphan*/  mf; } ;
struct TYPE_5__ {unsigned int operation; TYPE_2__ number; } ;
typedef  TYPE_1__ calc_node_t ;
struct TYPE_7__ {unsigned int last_operator; scalar_t__ sci_in; } ;

/* Variables and functions */
 unsigned int RPN_OPERATOR_EQUAL ; 
 unsigned int RPN_OPERATOR_NONE ; 
 unsigned int RPN_OPERATOR_PARENT ; 
 unsigned int RPN_OPERATOR_PERCENT ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__ calc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  percent_mode ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC6(calc_number_t *number, unsigned int func)
{
    calc_node_t tmp;

    if (FUNC1() && func == RPN_OPERATOR_EQUAL) {
        /* if a number has been entered with exponential */
        /* notation, I may update it with normal mode */
        if (calc.sci_in)
            return 1;
        return 0;
    }

    if (func == RPN_OPERATOR_PERCENT)
        percent_mode = TRUE;

    FUNC3(tmp.number.mf);
    FUNC5(&tmp.number, number);
    tmp.operation = func;

    FUNC4(&tmp);
    FUNC2(tmp.number.mf);

    if (func == RPN_OPERATOR_NONE)
        return 0;

    if (func != RPN_OPERATOR_PARENT) {
        calc.last_operator = func;
        FUNC0(number);
    }
    return 1;
}