#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  calc_number_t ;
struct TYPE_9__ {size_t operation; int /*<<< orphan*/  number; } ;
typedef  TYPE_1__ calc_node_t ;
struct TYPE_11__ {size_t prev_operator; scalar_t__ is_nan; int /*<<< orphan*/  prev; } ;
struct TYPE_10__ {unsigned int prec; } ;

/* Variables and functions */
 size_t RPN_OPERATOR_EQUAL ; 
 size_t RPN_OPERATOR_PARENT ; 
 size_t RPN_OPERATOR_PERCENT ; 
 TYPE_8__ calc ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_7__* operator_list ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,TYPE_1__*,size_t) ; 

__attribute__((used)) static void FUNC5(calc_number_t *number)
{
    calc_node_t *op, ip;
    unsigned int prec;

    op = FUNC2();
    ip = *op;
    prec = operator_list[ip.operation].prec;
    while (!FUNC1()) {
        op = FUNC2();

        if (prec <= operator_list[op->operation].prec) {
            if (op->operation == RPN_OPERATOR_PARENT) continue;

            calc.prev = ip.number;
            FUNC4(&ip, op, &ip, op->operation);
            if (calc.is_nan) {
                FUNC0();
                return;
            }
        } else {
            FUNC3(op);
            break;
        }
    }

    if (ip.operation != RPN_OPERATOR_EQUAL && ip.operation != RPN_OPERATOR_PERCENT)
        FUNC3(&ip);

    calc.prev_operator = op->operation;

    *number = ip.number;
}