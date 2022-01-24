#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  calc_number_t ;
struct TYPE_7__ {scalar_t__ operation; int /*<<< orphan*/  number; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ calc_node_t ;
struct TYPE_8__ {scalar_t__ is_nan; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ RPN_OPERATOR_PARENT ; 
 TYPE_6__ calc ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,TYPE_1__*,scalar_t__) ; 

void FUNC4(calc_number_t *number)
{
    calc_node_t *op, ip;

    ip.number = *number;
    ip.base = calc.base;
    while (!FUNC1()) {
        op = FUNC2();

        if (op->operation == RPN_OPERATOR_PARENT)
            break;

        FUNC3(&ip, op, &ip, op->operation);
        if (calc.is_nan) {
            FUNC0();
            return;
        }
    }
    *number = ip.number;
}